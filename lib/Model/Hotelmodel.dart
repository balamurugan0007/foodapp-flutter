class Hotels {
  Hotels(
      {required this.hotalimg,
      required this.hotalimg1,
      required this.hotalimg2,
      required this.hotalname});

  final String hotalname;
  final String hotalimg;
  final String hotalimg1;
  final String hotalimg2;

  static List<Hotels> hotalList = [
    Hotels(
        hotalimg:
            'https://i.pinimg.com/564x/f1/62/78/f16278d1c9d63af47e4cf771ba55eef4.jpg',
        hotalimg1:
            'https://i.pinimg.com/564x/91/36/78/913678daaff337b1ba2f88a43bd7e0af.jpg',
        hotalimg2:
            'https://i.pinimg.com/564x/20/ca/a4/20caa4d90fef0d9008847645ece61d4b.jpg',
        hotalname: 'Banana Leaf'),
    Hotels(
        hotalimg:
            'https://i.pinimg.com/736x/d0/64/01/d0640123e141c97c2e3a57655cbe00bc.jpg',
        hotalimg1:
            'https://i.pinimg.com/564x/c6/3b/75/c63b759006dc829950725936a44dd941.jpg',
        hotalimg2:
            'https://i.pinimg.com/736x/80/af/e0/80afe0c575ece532ab1a10f5b7de1f28.jpg',
        hotalname: 'Saravana Bavan'),
    Hotels(
        hotalimg:
            'https://i.pinimg.com/564x/c5/d2/62/c5d262f3377da91a7229772026a2ec5c.jpg',
        hotalimg1:
            'https://i.pinimg.com/736x/74/b4/2f/74b42f9208c4bfe96e93b06cdb25ec22.jpg',
        hotalimg2:
            'https://i.pinimg.com/236x/70/8f/ae/708fae0ee4f456bf4197e84b0ca8f26b.jpg',
        hotalname: 'Kannappa'),
    Hotels(
        hotalimg:
            'https://i.pinimg.com/564x/9f/ff/4f/9fff4f0568cb66b2e2df0dab5043e16d.jpg',
        hotalimg1:
            'https://i.pinimg.com/564x/c1/f9/39/c1f9398bd39cd90cb01b102f49590918.jpg',
        hotalimg2:
            'https://i.pinimg.com/736x/dc/94/88/dc94889de33d41b700274b8e1a0d8ea9.jpg',
        hotalname: 'Suvai'),
    Hotels(
        hotalimg:
            'https://i.pinimg.com/236x/1e/56/f7/1e56f78f1c196e654c766f7286e14f91.jpg',
        hotalimg1:
            'https://i.pinimg.com/736x/31/17/79/3117798277633d30993e40fdb344e789.jpg',
        hotalimg2:
            'https://i.pinimg.com/564x/48/0c/ba/480cba625c8bbbf6bfa1e4d0df4c26ed.jpg',
        hotalname: 'Anandha Bavan')
  ];
}
