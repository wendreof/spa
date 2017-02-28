
=begin

ads = Course.create(description: "Análise e Desenvolvimento de Sistemas")
ads.course_modules.create(description: "Modulo 1")
ads.course_modules.create(description: "Modulo 2")
ads.course_modules.create(description: "Modulo 3")

adm = Course.create(description: "Direito")
adm.course_modules.create(description: "Modulo 1")
adm.course_modules.create(description: "Modulo 2")
adm.course_modules.create(description: "Modulo 3")

agil = StudyUnit.create(description: "Desenvolvimento Ágil", course_module_id: 1)
vara = StudyUnit.create(description: "Direito Processual da Vara de Marmelo", course_module_id: 1)

=end

anderson = Teacher.create(registration: '023035', name: "Anderson Luis Ribeiro", email: "anderson.ribeiro@unifeob.edu.br")
wendreo = Teacher.create(registration: '000001', name: "Wendreo Fernandes", email: "wendreoofernandes@gmail.com")
felipe = Teacher.create(registration: '000002', name: "Felipe Queiroz", email: "felipe96_09@hotmail.com")
michele = Teacher.create(registration: '000003', name: "Michele Colla de Oliveira", email: "michele.oliveira@unifeob.edu.br")
