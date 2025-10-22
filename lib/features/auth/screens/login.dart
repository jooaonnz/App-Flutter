import 'package:flutter/material.dart';
import 'package:tela_de_cadastro/features/auth/screens/welcomePage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
  }
  
  class _LoginState extends State<Login>{
    final TextEditingController _textController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    @override
    void dispose(){
      _textController.dispose();
      super.dispose();
    }

    @override    
    Widget build(BuildContext context) {

      final labelStyle = TextStyle(
        color: Color(0xFFD49100),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w100,
        fontSize: 12,
      );

    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color(0xFFFFFFFF),
        title: const Text('Voltar', style: TextStyle(color: Color(0XFFD49100), fontFamily: 'Poppins', fontSize:18, fontWeight: FontWeight.w400 )),
        titleSpacing: 0.0,
        leadingWidth: 30,
        leading:  Builder(
          builder: (BuildContext context){
            return IconButton(
              onPressed: () 
              {print('Botão voltar pressionado');
              Navigator.of(context).pop(
                MaterialPageRoute<void>(
                  builder: (context) => const WelcomePage())
              );
              },
              icon: const Icon(Icons.arrow_back_ios), color:  Color(0xFFD49100),
              );
          },

        ),
        ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centraliza na tela
          children: [
            const Text('Informações de acesso',  style: TextStyle(fontFamily: 'Poppins', fontSize: 26.0 , fontWeight: FontWeight.w500), ),
            const SizedBox(height: 90), // espaço entre texto e botão
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
                child: Form(
                  key: _formKey,
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Email', style: labelStyle,),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                offset: const Offset(0,4),
                              ),
                            ]
                          ),
                          

                       child: TextFormField(
                            decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFDFCFB ),
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFFFDFCFB),
                            width: 0
                            ),
                            ),
                          ),
                        ),
                        ),
                        SizedBox(height: 44),

                        Text('Número', style: labelStyle,),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFFFDFCFB))
                            ),
                          ),
                        ),
                        SizedBox(height: 44),
                        
                        Text('Criar senha', style: labelStyle,),
                        TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFFFDFCFB))
                          ),
                        ),
                      ),
                      SizedBox(height: 44),

                      Text('Confirmar senha', style: labelStyle,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xFFFDFCFB))
                          ),
                        ),
                      )
                    ],
                  ),
                  ),
               ),
               SizedBox(height:100 ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD49100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {
                print('Botão pressionado!');
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: const Text(
                'Avançar',
                style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF), fontFamily: 'Poppins', fontWeight: FontWeight.w500 ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
      
  