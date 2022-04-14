import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static const routeName = '/User-screen';
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLF7iOmzWCLqRPZ1Did1LvGKcGvdhtNSwaGA&usqp=CAU',
                fit: BoxFit.cover,
              ),
              title: Row(
                children: const [
                  SizedBox(
                    width: 12,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Jenny Gilbert')
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: [
                  // User Bag

                  const _userTileText(
                    text: 'User Bag',
                  ),
                  const _userTileHeightSpace(
                    height: 10,
                  ),
                  _userListTile(
                    onTap: () {},
                    leadingIcon: Icons.favorite,
                    color: Colors.red,
                    title: 'Wishlist',
                    trailingIcon: Icons.arrow_forward_ios,
                    tIconCallBack: () {},
                  ),
                  _userListTile(
                    onTap: () {},
                    leadingIcon: Icons.shopping_cart,
                    color: Colors.deepPurpleAccent,
                    title: 'Cart',
                    trailingIcon: Icons.arrow_forward_ios,
                    tIconCallBack: () {},
                  ),

                  const _userTileHeightSpace(height: 15),
                  const _userTileText(text: 'User Settings'),
                  const _userTileHeightSpace(height: 10),

                  // User Settings
                  Card(
                    child: SwitchListTile.adaptive(
                      secondary: const Icon(Icons.light_mode),
                      title: const Text('Light Mode'),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  const _userTileHeightSpace(height: 15),
                  const _userTileText(text: 'User Information'),
                  const _userTileHeightSpace(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _userListTile extends StatelessWidget {
  final IconData leadingIcon;
  final Color color;
  final String title;
  final String? subTitle;
  final IconData? trailingIcon;
  final VoidCallback? tIconCallBack;
  final VoidCallback? onTap;
  const _userListTile({
    this.subTitle,
    this.trailingIcon,
    this.tIconCallBack,
    this.onTap,
    Key? key,
    required this.leadingIcon,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: color,
        ),
        title: Text(title),
        subtitle: subTitle == null ? null : Text(subTitle!),
        onTap: onTap,
        trailing: IconButton(
          onPressed: tIconCallBack,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}

class _userTileHeightSpace extends StatelessWidget {
  final double height;
  const _userTileHeightSpace({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class _userTileText extends StatelessWidget {
  final String text;
  const _userTileText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
