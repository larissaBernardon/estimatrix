## UserAvatarSection

**Sobre:**  Seção onde estão listados os participantes da sessão e informações sobre o estado de suas estimativas.

1.  Constructor
2.  Properties
3.  Usage

**Constructor:**
A inicialização requer uma instancia de `userAvatar`

```dart
const UserAvatarSection({
    required this.userAvatar, 
});
```
**Usage**

```dart
class MainPage extends StatefulWidget {
	@override
	_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
	List<UserAvatar> userList = [
	UserAvatar(id: '1', name: 'larissa', color: Colors.cyan, position: 0),
	UserAvatar(id: '2', name: 'laguna', color: Colors.pink, position: 1),
	UserAvatar(id: '3', name: 'batata', color: Colors.green, position: 2),
	UserAvatar(id: '4', name: 'polenta', color: Colors.purple, position: 3)
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Column(
				children: userList
				.map((avatar) => Padding(
				padding: const EdgeInsets.only(bottom: 50),
				child: UserAvatarSectionWidget(
				userAvatar: avatar,
			),
		  ),
		).toList(),
	  ),
	);
  }
}
