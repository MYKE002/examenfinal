import 'package:dio/dio.dart';
import 'package:examenfinal/screens/proyecto2/dominio/message.dart';
import 'package:examenfinal/screens/proyecto2/infraestructura/get_yes_no_model.dart';

class GetAnswer {
  // nueva propiedad a instanciar
  final _dio = Dio();

  // metodo que va a regresar mensajes de respuesta
  //comando para instanciar dio dart pub add dio
  Future<Message> getAnswer() async {
    //declarar el url que quiero llamar como respuesta
    final response = await _dio.get('https://yesno.wtf/api');
    //retornar como mensaje mappers

    //llamar al mapper de json
    final getYesNoModel = GetYesNoModel.fromJsonMap(response.data);

    //dentro de posman
    return getYesNoModel.toMessageEntity();
  }
}
