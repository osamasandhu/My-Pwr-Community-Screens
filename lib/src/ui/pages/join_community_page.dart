import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/ui/pages/feed_page.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/decorated_dialog.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/outline_button.dart';
import 'package:my_pwr_community_screens/src/ui/widgets/text_field.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/const.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';
import 'package:my_pwr_community_screens/src/utils/nav.dart';

class JoinCommunityPage extends StatefulWidget {
  const JoinCommunityPage({Key? key}) : super(key: key);

  @override
  State<JoinCommunityPage> createState() => _JoinCommunityPageState();
}

class _JoinCommunityPageState extends State<JoinCommunityPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.onBoardingButtonColor,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Join Community',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Choose Your Nickname',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            ), RadioWidget(
              groupValue: nickNameType,
              callBack: (_) {
                nickNameType = _;
            //    log('Value : $nickNameType : $_');
              },
            ), AppButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext c) {
                      return DecoratedDialog(
                        children: [
                          const Text(
                            'Congratulations!',
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            description,
                            style: const TextStyle(
                              height: 1.5,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              _buildDialogColumn(
                                url: AppImages.expert,
                                title: 'Your ESD Expert',
                                description: '[ESD_Expert_Name]',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              _buildDialogColumn(
                                url: AppImages.mentor,
                                title: 'Your Peer Mentor',
                                description: '[Peer_Mentor_Name]',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          AppButton(
                              onPressed: () {
                                AppNavigation.push(context, const FeedPage());
                              },
                              title: 'Got it!')
                        ],
                      );
                    },
                  );
                },
                title: 'Join Support Circle')
          ],
        ),
      ),
    );
  }
  String nickNameType = 'username';

  String description =
      'You are officially part of our community! We’ve assigned you to an awesome Support Circle!';

  Widget _buildDialogColumn(
      {required String url,
      required String title,
      required String description}) {
    return Expanded(
        child: Column(
      children: [
        Image.asset(url),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}

class RadioWidget extends StatefulWidget {
  const RadioWidget({
    Key? key,
    required this.callBack,
    required this.groupValue,
  }) : super(key: key);

  final String groupValue;
  final Function(String) callBack;

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String nickNameType = 'username';

  @override
  void initState() {
    nickNameType = widget.groupValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 5),
          child: Text(
            'Keep Username',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio<String>(
              value: 'username',
              groupValue: nickNameType,
              onChanged: (v) {
                nickNameType = v ?? '';
                widget.callBack(v ?? '');
                setState(() {});
              },
              activeColor: AppColors.primaryColor,
            ),
            Expanded(
              child: AppTextField(
                textEditingController: userController,
                hint: 'Nickname',
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 50, bottom: 5),
          child: Text(
            'Remain Anonymous',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio<String>(
              value: 'anonymous',
              groupValue: nickNameType,
              onChanged: (v) {
                nickNameType = v ?? '';
                widget.callBack(v ?? '');
                setState(() {});
              },
              activeColor: AppColors.primaryColor,
            ),
            Expanded(
              child: AppTextField(
                textEditingController: anonymousController,
                hint: 'Anonymous Nickname',
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  TextEditingController userController = TextEditingController();
  TextEditingController anonymousController = TextEditingController();
}