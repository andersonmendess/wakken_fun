import 'package:flutter/material.dart';
import 'package:wakkenfun/constants/assets_constant.dart';
import 'package:wakkenfun/models/post_model.dart';

class FeedItemComponent extends StatelessWidget {
  final PostModel post;

  const FeedItemComponent({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: post.usuarioAutorBorda != null
                              ? LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(int.parse(post
                                        .usuarioAutorBorda!.color1
                                        .replaceAll("#", "0xFF"))),
                                    Color(int.parse(post
                                        .usuarioAutorBorda!.color2
                                        .replaceAll("#", "0xFF"))),
                                  ],
                                )
                              : null),
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          image: post.usuarioAutorImagemPerfil != null
                              ? DecorationImage(
                                  image: NetworkImage(
                                      post.usuarioAutorImagemPerfil!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors
                                .white, //                   <--- border color
                            width: 1.0,
                          ),
                        ),
                        child: post.usuarioAutorImagemPerfil == null
                            ? const FlutterLogo()
                            : null,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      post.usuarioAutorNome,
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    Image.asset(
                      AssetsConstant.buttonUser,
                      scale: 2.5,
                      color: const Color(0xFFe5306c),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${post.partidasExecutadasQtd}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFe5306c),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      AssetsConstant.buttonComment,
                      scale: 1.5,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${post.comentariosQtd}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFe5306c),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      AssetsConstant.btnFavorite,
                      scale: 1.4,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${post.avaliacaoNota.toStringAsFixed(1)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFe5306c),
                        fontSize: 13,
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      visualDensity: VisualDensity.compact,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.network(
                    post.imagemCapa,
                    width: MediaQuery.of(context).size.height / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width - 120,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0ACDAD),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        post.titulo,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
