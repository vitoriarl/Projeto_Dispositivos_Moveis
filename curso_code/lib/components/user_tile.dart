import 'package:flutter/material.dart';
import 'package:curso_code/models/user.dart';
import 'package:curso_code/provider/users.dart';
import 'package:curso_code/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.USER_FORM, arguments: user);
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text('Excluir Usuário'),
                      content: Text('Tem certeza?'),
                      actions: <Widget>[
                        // na video aula o professor tinha usado FlatButton mas não se usa mais ele. por isso
                        // substitui por TextButton
                        TextButton(
                          child: null,
                          onPressed: null,
                        ),
                        TextButton(
                          child: Text('Não'),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        TextButton(
                          child: Text('Sim'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    ),
                  ).then((confirmed) {
                    if (confirmed) {
                      Provider.of<Users>(context, listen: false).remove(user);
                    }
                  });
                },
              ),
            ],
          ),
        ));
  }
}
