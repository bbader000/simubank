import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_repositories/data_repositories.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/features.dart';
import 'package:test_app/gen/locale_keys.g.dart';

const _kPageSize = 10;
const _kAvatarSize = 50.0;

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: UIConstants.paddingHorizontal32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Center(
              child: H1Text(
                LocaleKeys.transactions_transactions.tr(),
                color: colors.mainBlue,
              ),
            ),
            const Gap(20),
            const _Title(),
            const Expanded(child: _Items()),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final textStyles = context.textStyles;
    final userProfile = context.select(
      (ProfileCubit cubit) => cubit.state.user,
    );
    if (userProfile == null) return const SizedBox.shrink();
    final avatarUrl = userProfile.profilePicture;
    return Row(
      children: [
        if (avatarUrl != null) ...[
          Container(
            height: _kAvatarSize,
            width: _kAvatarSize,
            decoration: BoxDecoration(
              color: context.colors.mainGrey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: CachedNetworkImageProvider(avatarUrl),
              ),
            ),
          ),
          const Gap(10),
        ],
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocaleKeys.transactions_welcomeText.tr(),
                  style: textStyles.h1.copyWith(fontWeight: FontWeight.normal),
                ),
                TextSpan(text: userProfile.name, style: textStyles.h1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Items extends StatefulWidget {
  const _Items();

  @override
  State<_Items> createState() => _ItemsState();
}

class _ItemsState extends State<_Items> {
  PagingController<int, Transaction>? _pagingController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _initController());
  }

  void _initController() {
    _pagingController = PagingController<int, Transaction>(
      getNextPageKey: _getNextPageKey,
      fetchPage:
          (key) => context.read<TransactionCubit>().getTransactions(
            pageKey: key,
            pageSize: _kPageSize,
          ),
    );
    setState(() {});
  }

  int? _getNextPageKey(PagingState<int, Transaction> state) {
    final keys = state.keys;
    final pages = state.pages;
    if (keys == null) return 1;
    if (pages != null && pages.last.length < _kPageSize) return null;
    return keys.last + 1;
  }

  @override
  void dispose() {
    _pagingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_pagingController == null) return const SizedBox.shrink();
    return PagingListener(
      controller: _pagingController!,
      builder:
          (context, state, fetchNextPage) => PagedListView<int, Transaction>(
            state: state,
            fetchNextPage: fetchNextPage,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (_, item, __) => TransactionCard(transaction: item),
              firstPageProgressIndicatorBuilder:
                  (_) => const TransactionShimmer(),
              newPageProgressIndicatorBuilder: (_) => const _Loader(),
            ),
          ),
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Center(
      child: Column(
        children: [
          const ActivityIndicator(),
          const Gap(10),
          CaptionText(
            LocaleKeys.transactions_notSoFast.tr(),
            color: colors.textColorSecondary,
          ).animate(onComplete: (controller) => controller.forward()).shimmer(),
        ],
      ),
    );
  }
}
