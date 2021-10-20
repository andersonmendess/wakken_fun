class PostModel {
  late String sId;
  late bool privado;
  late int partidasExecutadasQtd;
  late int comentariosQtd;
  late int mediaNota;
  late dynamic mediaAcertos;
  late dynamic porcetagemMediaAcertos;
  late dynamic mediaDuracao;
  late dynamic avaliacaoNota;
  late bool statusAtivo;
  late bool finalizado;
  late String desafioId;
  late String titulo;
  late String descricao;
  late String usuarioAutor;
  late String usuarioAutorNome;
  late String usuarioAutorApelido;
  late String imagemCapa;
  late String linkVideo;
  late String numeroNic;
  late String dataCriacao;
  late int iV;
  late bool podeSerExcluido;
  late String? usuarioAutorImagemPerfil;
  UsuarioAutorBorda? usuarioAutorBorda;
  UsuarioAutorIcone? usuarioAutorIcone;

  PostModel(
      {required this.sId,
      required this.privado,
      required this.partidasExecutadasQtd,
      required this.comentariosQtd,
      required this.mediaNota,
      required this.mediaAcertos,
      required this.porcetagemMediaAcertos,
      required this.mediaDuracao,
      required this.avaliacaoNota,
      required this.statusAtivo,
      required this.finalizado,
      required this.desafioId,
      required this.titulo,
      required this.descricao,
      required this.usuarioAutor,
      required this.usuarioAutorNome,
      required this.usuarioAutorApelido,
      required this.imagemCapa,
      required this.linkVideo,
      required this.numeroNic,
      required this.dataCriacao,
      required this.iV,
      required this.podeSerExcluido,
      required this.usuarioAutorImagemPerfil,
      this.usuarioAutorBorda,
      this.usuarioAutorIcone});

  PostModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    privado = json['privado'];
    partidasExecutadasQtd = json['partidas_executadas_qtd'];
    comentariosQtd = json['comentarios_qtd'];
    mediaNota = json['media_nota'];
    mediaAcertos = json['media_acertos'];
    porcetagemMediaAcertos = json['porcetagem_media_acertos'];
    mediaDuracao = json['media_duracao'];
    avaliacaoNota = json['avaliacao_nota'];
    statusAtivo = json['status_ativo'];
    finalizado = json['finalizado'];
    desafioId = json['desafio_id'];
    titulo = json['titulo'];
    descricao = json['descricao'];
    usuarioAutor = json['usuario_autor'];
    usuarioAutorNome = json['usuario_autor_nome'];
    usuarioAutorApelido = json['usuario_autor_apelido'];
    imagemCapa = json['imagem_capa'];
    linkVideo = json['link_video'];
    numeroNic = json['numero_nic'];
    dataCriacao = json['data_criacao'];
    iV = json['__v'];
    podeSerExcluido = json['pode_ser_excluido'];
    if (json['usuario_autor_imagem_perfil'] != null) {
      usuarioAutorImagemPerfil = json['usuario_autor_imagem_perfil'];
    } else {
      usuarioAutorImagemPerfil = null;
    }
    usuarioAutorBorda = json['usuario_autor_borda'] != null
        ? UsuarioAutorBorda.fromJson(json['usuario_autor_borda'])
        : null;
    usuarioAutorIcone = json['usuario_autor_icone'] != null
        ? UsuarioAutorIcone.fromJson(json['usuario_autor_icone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_id'] = sId;
    data['privado'] = privado;
    data['partidas_executadas_qtd'] = partidasExecutadasQtd;
    data['comentarios_qtd'] = comentariosQtd;
    data['media_nota'] = mediaNota;
    data['media_acertos'] = mediaAcertos;
    data['porcetagem_media_acertos'] = porcetagemMediaAcertos;
    data['media_duracao'] = mediaDuracao;
    data['avaliacao_nota'] = avaliacaoNota;
    data['status_ativo'] = statusAtivo;
    data['finalizado'] = finalizado;
    data['desafio_id'] = desafioId;
    data['titulo'] = titulo;
    data['descricao'] = descricao;
    data['usuario_autor'] = usuarioAutor;
    data['usuario_autor_nome'] = usuarioAutorNome;
    data['usuario_autor_apelido'] = usuarioAutorApelido;
    data['imagem_capa'] = imagemCapa;
    data['link_video'] = linkVideo;
    data['numero_nic'] = numeroNic;
    data['data_criacao'] = dataCriacao;
    data['__v'] = iV;
    data['pode_ser_excluido'] = podeSerExcluido;
    data['usuario_autor_imagem_perfil'] = usuarioAutorImagemPerfil;
    data['usuario_autor_borda'] =
        usuarioAutorBorda != null ? usuarioAutorBorda!.toJson() : null;
    data['usuario_autor_icone'] =
        usuarioAutorIcone != null ? usuarioAutorIcone!.toJson() : null;

    return data;
  }
}

class UsuarioAutorBorda {
  late String id;
  late String color1;
  late String color2;

  UsuarioAutorBorda(
      {required this.id, required this.color1, required this.color2});

  UsuarioAutorBorda.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    color1 = json['color1'];
    color2 = json['color2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['color1'] = color1;
    data['color2'] = color2;
    return data;
  }
}

class UsuarioAutorIcone {
  late String id;
  late String url;
  late int xpAmount;

  UsuarioAutorIcone({
    required this.id,
    required this.url,
    required this.xpAmount,
  });

  UsuarioAutorIcone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    xpAmount = json['xp_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['url'] = url;
    data['xp_amount'] = xpAmount;
    return data;
  }
}
