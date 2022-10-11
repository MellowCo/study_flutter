import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  final List<String> _list = ['data-0'];

  // 当前激活的index
  int _currentIndex = 1;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyStatefulWidget',
      // 是否显示debug图标
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // 左侧icon
          leading: IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () {
              print('left');
            },
          ),
          // 右侧icon
          actions: [
            IconButton(
                onPressed: () {
                  print('search');
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('more');
                },
                icon: const Icon(Icons.more_horiz_outlined))
          ],
          // 背景色
          backgroundColor: Colors.red,
          title: const Text('MyStatefulWidget'),

          // 设置tabbar
          bottom: TabBar(
            controller: _tabController,
            // 指示器激活颜色
            indicatorColor: Colors.green,
            // 设置指示器与标题等宽
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(child: Text('热门')),
              Tab(child: Text('推荐')),
              Tab(child: Text('视频'))
            ],
          ),
        ),

        // 页面内容
        body: TabBarView(
          controller: _tabController,
          children: const [Text('热门'), Text('推荐'), Text('视频')],
        ),

        // 浮动按钮
        floatingActionButton: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: FloatingActionButton(
            onPressed: () {
              // 动态添加列表
              setState(() {
                _list.add('data-${_list.length}');
              });
            },
            child: const Icon(Icons.add),
          ),
        ),
        // 设置浮动按钮位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // 设置底部 tabbar
        bottomNavigationBar: BottomNavigationBar(
          // 选中的菜单
          currentIndex: _currentIndex,
          // 底部有4个或4个以上菜单 需要设置 type 为 fixed
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            // 激活tabbar
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: '用户')
          ],
        ),
        // 左侧边栏
        drawer: Drawer(
          child: Column(children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png',
                      ))),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  '这是一个drawer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: Text('个人中心'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('系统设置'),
            )
          ]),
        ),

        // 右侧侧边栏
        endDrawer: Drawer(
          child: Column(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('licl'),
                accountEmail: Text('xxx@qq.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 200,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/47939250?v=4'),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://www.itying.com/images/flutter/2.png',
                        ))),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: Text('个人中心'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text('系统设置'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
