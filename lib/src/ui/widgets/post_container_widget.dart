import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_divider.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/app_text_field.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/text_field.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/const.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';

class PostContainerWidget extends StatefulWidget {
  const PostContainerWidget({Key? key}) : super(key: key);

  @override
  State<PostContainerWidget> createState() => _PostContainerWidgetState();
}

class _PostContainerWidgetState extends State<PostContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 592,
      margin: const EdgeInsets.only(left: 24, right: 24, top: 27),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 1,
            color: const Color(0xFF0090C6).withOpacity(0.2),
          ),
        ],
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
              bottom: 8,
            ),
            child: _getUserNameRow(
              imageUrl: '',
              username: 'Username',
            ),
          ),
          const AppDividerWidget(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              kLoremIpsum,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF0A0A0A),
              ),
              maxLines: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
                const SizedBox(width: 4),
                _getRowText(text: '83'),
                Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(
                    color: Color(0xFF757575),
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                ),
                _getRowText(text: '132 comments'),
                const Spacer(),
                _getRowText(text: '3 hours ago'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: AppDividerWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Row(
              children: [
                _getRowIcon(
                  icon: AppImages.heartIcon,
                  onTap: () {},
                ),
                const SizedBox(width: 21),
                _getRowIcon(icon: AppImages.chatIcon, onTap: () {}),
                const Spacer(),
                _getRowIcon(
                  icon: AppImages.bookmarkIcon,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const AppDividerWidget(),
          Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (c, i) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      child: _getCommentWidget(
                        imageUrl: '',
                        userName: 'Username',
                        comment: kComment,
                      ),
                    );
                  },
                  separatorBuilder: (c, i) {
                    return const AppDividerWidget();
                  },
                  itemCount: 6)),
          // for (int i = 0; i < 10; i++) ...[
          //   Padding(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 16,
          //       vertical: 8,
          //     ),
          //     child: _getCommentWidget(
          //       imageUrl: '',
          //       userName: 'Username',
          //       comment: kComment,
          //     ),
          //   ),
          // ],
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: DecoratedAppTextField(
              bottomPadding: 0,
              hint: 'Write a comment',
              fillColor: Color(0xFFf5f5f5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getCommentWidget({
    required String imageUrl,
    required String userName,
    required String comment,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.lightGreyColor,
          radius: 16,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  softWrap: true,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  comment,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getUserNameRow({required String imageUrl, required String username}) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.lightGreyColor,
          radius: 16,
        ),
        const SizedBox(width: 8),
        Text(
          username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _getRowIcon({required String icon, required VoidCallback onTap}) {
    return GestureDetector(onTap: onTap, child: Image.asset(icon));
  }

  Widget _getRowText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF9E9E9E),
      ),
    );
  }
}
