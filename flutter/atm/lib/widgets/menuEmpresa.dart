import 'package:flutter/material.dart';

class MenuEmpresa extends StatefulWidget {
  @override
  _MenuEmpresaState createState() => _MenuEmpresaState();
}

class _MenuEmpresaState extends State<MenuEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Empresa',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.textTheme.body1.color,
            fontSize: Theme.of(context).appBarTheme.textTheme.body1.fontSize,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(2),
              child: Image.asset('assets/img/imagens/detalhe_empresa.png'),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu molestie ex, eget rhoncus diam. Sed congue libero id diam mattis, sit amet finibus urna tristique. In a efficitur erat. Vivamus at tincidunt arcu. In eu neque est. Sed elementum aliquet eleifend. Donec ac consequat purus. Nulla nunc lectus, pretium a est ac, iaculis finibus augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas malesuada aliquet lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum id vulputate quam. Cras turpis urna, pulvinar in volutpat eu, tempor in orci. Proin interdum augue non lectus vulputate consectetur. Phasellus ac tortor sed purus lobortis finibus non ac leo. Nulla varius lectus eget cursus vestibulum. Maecenas tincidunt, nulla vel faucibus euismod, velit nibh rutrum velit, eu commodo mi quam eu ante. Nullam ultricies porttitor sem quis mollis. Ut dictum mauris a est hendrerit condimentum. In risus nisl, accumsan eu mi quis, laoreet convallis nulla. Ut lacus erat, tempus nec gravida non, congue eu ante. Etiam et dui nibh. Mauris id pellentesque elit, quis lobortis nulla. Aliquam aliquam auctor urna, quis gravida felis placerat a. Aliquam tristique, neque nec facilisis egestas, leo orci faucibus erat, quis sodales erat nibh non lacus. Nulla facilisi. Curabitur laoreet hendrerit leo, ultricies efficitur libero vestibulum quis. Nullam dui leo, elementum porttitor efficitur eget, ultrices ut dui. Curabitur semper sapien ut posuere molestie. Integer dapibus pharetra odio sit amet porttitor. Sed pellentesque lectus non nisi tristique tristique. Pellentesque placerat massa et viverra molestie. Sed luctus sem sit amet lorem volutpat, eu ullamcorper urna accumsan. Nulla maximus neque tempus ante suscipit, posuere lobortis purus vehicula. Sed finibus fringilla lectus, quis finibus massa efficitur at. Donec at nulla ut risus auctor efficitur quis quis est. Nullam in quam at urna pretium iaculis vestibulum ut mi. Proin mattis, sem quis finibus consequat, tortor diam laoreet quam, at porttitor ligula mauris eget lacus. Donec varius nulla ante, quis congue risus varius non. Donec metus augue, efficitur id euismod ut, elementum sit amet est. Vivamus efficitur velit neque, ut hendrerit lorem viverra ut. Curabitur sollicitudin vel metus vel ullamcorper. Sed elementum sem a leo tristique, at egestas orci lobortis. Nullam placerat, sapien quis lobortis molestie, lectus magna finibus erat, et rhoncus mi tortor eu tellus. In tristique odio nec velit gravida blandit. Fusce quis ligula finibus, lobortis metus sit amet, mattis ipsum. Integer ultrices at turpis vel fringilla. Donec interdum augue viverra enim elementum sagittis. Fusce sem odio, elementum sed elementum a, consectetur vel est. Maecenas sed arcu a tortor aliquet ultrices gravida id sem. Mauris sed libero maximus neque fringilla aliquet. Praesent in nulla fermentum, dictum justo quis, accumsan lorem. Donec a gravida metus, in scelerisque justo. Pellentesque varius massa nunc, non suscipit arcu maximus nec. Suspendisse varius eros elit, a efficitur tellus mattis id. Maecenas lobortis neque risus, non aliquam ipsum mollis eu. Sed dignissim sapien vel augue faucibus, malesuada condimentum mauris0 pellentesque. Duis at nisi neque.""",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
