part of 'index.dart';

extension _Widget on _RegisterPageState {
  Widget get _registerPage {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              // key: _formKey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),

                  // ner

                  TextFormField(
                    controller: _firstNameController,
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
                        "Овог",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // uvug

                  TextFormField(
                    controller: _lastNameController,
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
                        "Нэр",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // utasnii dugaar

                  TextFormField(
                    controller: _phoneController,
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
                        "Утасны дугаар",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  //mail hayg

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
                        "Мэйл хаяг",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),

                  // nuuts ug

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
                        fontWeight: FontWeight.w900),
                  ),

                  // nuuts ugee dahin oruulah

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPasswordController,
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
                        "Нууц үгээ дахин оруулна уу",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                    style: const TextStyle(
                        color: MyThemes.mainGreen,
                        // fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),

                  // hadgalah tovch

                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // children: [
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: ((context) => const RegisterPage())));
                    //   },
                    // ),
                    // ],
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      // style: ButtonStyle(
                      // backgroundColor: MaterialStateProperty.all(
                      // const Color.fromARGB(255, 255, 72, 0),
                      // ),
                      // foregroundColor: MaterialStateProperty.all(Colors.black),
                      // ),
                      // onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: ((context) => const BottomNav())));
                      // },
                      onPressed: signup,
                      child: Text("Бүртгүүлэх"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
