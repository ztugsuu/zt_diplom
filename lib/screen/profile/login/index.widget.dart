part of 'index.dart';

extension _Widget on _LoginPageState {
  Widget get _loginPage {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 15),
            const Text(
              "Автозасварын нэгдсэн бүртгэл",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 72, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Тавтай морил",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 72, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: _userNameController,
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
                    color: Color.fromARGB(255, 255, 72, 0),
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
                      color: Color.fromARGB(255, 255, 72, 0),
                    ),
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                )),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TextButton(
                  onPressed: null,
                  child: Text("Бүртгүүлэх"),
                ),
                TextButton(
                  onPressed: null,
                  child: Text("Нууц үг сэргээх"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 255, 72, 0),
                  ),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: _onSubmit,
                child: const Text("Нэвтрэх"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
