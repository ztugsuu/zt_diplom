part of 'index.dart';

extension _Widget on _AddPostState {
  Widget get _addPost {
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

                  // garchig

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
                        "Гарчиг",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // hayg

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
                        "Хаяг",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // үнэ

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
                        "Үнэ",
                        style: TextStyle(
                            // color: Color.fromARGB(255, 255, 72, 0),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // цагийн хуваарь

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
                        "Цагийн хуваарь",
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
                    keyboardType: TextInputType.number,
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

                  //  tailbar

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPasswordController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Хоосон байж болохгүй";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      label: const Text(
                        "Тайлбар",
                        style: TextStyle(),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),


                  //zurag nemeh

                  const SizedBox(height: 20),

                  Material(
                    color: MyThemes.mainGreen,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      splashColor: MyThemes.mainGray,
                      borderRadius: BorderRadius.circular(15),
                      onTap: null,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Зураг",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),

                  // hadgalah tovch

                  const SizedBox(height: 20),
                  Material(
                    color: MyThemes.mainGreen,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      splashColor: MyThemes.mainGray,
                      borderRadius: BorderRadius.circular(15),
                      onTap: null,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Нийтлэх",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
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
