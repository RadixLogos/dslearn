INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('rubens', 'rubenshds@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);

INSERT INTO tb_course (name,img_uri, img_gray_uri) VALUES ('Curso de HTML','https://www.devmedia.com.br/arquivos/cursos/HTML_fundamentos/thumb.webp','https://julianolopes.com.br/wp-content/uploads/2021/02/simbolo-html-300x300.jpeg');
INSERT INTO tb_offer (edition,start_moment,end_moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE'2025-02-12T12:30:00Z',TIMESTAMP WITH TIME ZONE'2026-02-12T12:30:00Z',1);

INSERT INTO tb_notification (text,moment,read,route,user_id) VALUES ('Você ingressou no curso de HTML!',TIMESTAMP WITH TIME ZONE'2025-02-12T12:30:00Z',false,'https://localhost:8080/user/1',1);

INSERT INTO tb_resource (title,description,position,img_uri,type,external_link,offer_id) VALUES ('Boot camp HTLM','Treino para html', 1,'https://www.devmedia.com.br/arquivos/cursos/HTML_fundamentos/thumb.webp',2,'https://externallink:3450',1);

INSERT INTO tb_section (title,description,position,img_uri, resource_id,prerequisite_id) VALUES ('Introdução','Aqui começamos o curso',1,'https://www.devmedia.com.br/arquivos/cursos/HTML_fundamentos/thumb.webp',1,null);
INSERT INTO tb_section (title,description,position,img_uri,  resource_id,prerequisite_id) VALUES ('Segunda parte','Algo um pouco mais avançado',2,'https://www.devmedia.com.br/arquivos/cursos/HTML_fundamentos/thumb.webp',1,1);
INSERT INTO tb_section (title,description,position,img_uri,  resource_id,prerequisite_id) VALUES ('Introdução','Aqui começamos o curso',1,'https://www.devmedia.com.br/arquivos/cursos/HTML_fundamentos/thumb.webp',1,2);

INSERT INTO tb_enrollment (user_id,offer_id,enroll_moment,refund_moment,available,only_update) VALUES (1,1,TIMESTAMP WITH TIME ZONE'2025-02-12T12:30:00Z',null,true,false);

INSERT INTO tb_lesson (title,position,section_id) VALUES ('Aula 01 do capitulo 1',1,1);
INSERT INTO tb_content ( id, text_content,video_uri) VALUES (1,'Material de apoio: abc','https://www.youtube.com/watch?v=NPKrzwRbMZg');

INSERT INTO tb_lesson (title,position,section_id) VALUES ('Aula 02 do capitulo 1',2,1);
INSERT INTO tb_content ( id, text_content,video_uri) VALUES (2,'Material de apoio: abc','https://www.youtube.com/watch?v=NPKrzwRbMZg');

INSERT INTO tb_lesson (title,position,section_id) VALUES ('Aula 03 do capitulo 1',3,1);
INSERT INTO tb_content ( id, text_content,video_uri) VALUES (3,'Material de apoio: abc','https://www.youtube.com/watch?v=NPKrzwRbMZg');

INSERT INTO tb_lesson (title,position,section_id) VALUES ('Tarega do capitulo 1',4,1);
INSERT INTO tb_task (id,description,question_count,approval_count,weight, due_date) VALUES (4,'Fazer um trabalho bem feito',5,4,1.0,'2022-12-12T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2,1,1);
