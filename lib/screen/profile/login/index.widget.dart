part of 'index.dart';

extension _Widget on _LoginPageState {
  Widget get _loginPage {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          // key: _formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // const Text(
              //   "Автозасварын нэгдсэн бүртгэл",
              //   style: TextStyle(
              //       // color: Color.fromARGB(255, 255, 72, 0),
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold),
              // ),
              const Text(
                "Тавтай морил",
                style: TextStyle(
                    // color: Color.fromARGB(255, 255, 72, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              //nevtreh ner
              TextFormField(
                controller: _mailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Хоосон байж болохгүй";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: const Text(
                    "Нэвтрэх нэр эсвэл майл хаяг",
                    style: TextStyle(
                        // color: Color.fromARGB(255, 255, 72, 0),
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    label: const Text(
                      "Нууц үг",
                      style: TextStyle(
                          // color: Color.fromARGB(255, 255, 72, 0),
                          ),
                    ),
                  ),
                  style: const TextStyle(
                      color: MyThemes.mainGreen,
                      // fontSize: 20,
                      fontWeight: FontWeight.w900)),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const RegisterPage())));
                    },
                    child: const Text(
                      "Бүртгүүлэх",
                      style: TextStyle(
                        color: MyThemes.mainGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      "Нууц үг сэргээх",
                      style: TextStyle(
                        color: MyThemes.mainGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Material(
                color: MyThemes.mainGreen,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  splashColor: MyThemes.mainGray,
                  borderRadius: BorderRadius.circular(15),
                  onTap: signIn,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      "Нэвтрэх",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
