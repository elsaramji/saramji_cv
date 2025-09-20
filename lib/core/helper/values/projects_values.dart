class Project {
  final String images;
  final String title;
  final String description;
  final List<String> links;
  final List<String> technologies;

  const Project({
    required this.images,
    required this.title,
    required this.description,
    required this.links,
    required this.technologies,
  });
}

List<Project> projects = [
  Project(
    images: "assets/icons/pomodoro-technique 1.png",
    title: "PomoTasks 🍅",
    description:
        "PomoTasks is a minimal and efficient Pomodoro timer and task manager designed to enhance productivity through focused work intervals and structured task management.",
    links: [
      "https://github.com/elsaramji/pomotasks.git",
      "https://appetize.io/app/b_z5jmfq4mwma7fcjpzjut5fgmaa?device=pixel7&osVersion=13.0&toolbar=true",
    ],
    technologies: ["Flutter", "Clean Architecture", "Figma"],
  ),
  Project(
    images: "assets/icons/doc_doc.png",
    title: "Doctor Doc 🩺",
    description:
        "Doctor Doc is a cross-platform mobile application designed to simplify the process of managing medical appointments and remote consultations.",
    links: [
      "https://github.com/elsaramji/doctors_doc",
      "https://appetize.io/app/b_444qr5jr4x3bywkg2agvrfx2qi?device=pixel7&osVersion=13.0&toolbar=true",
    ],
    technologies: ["Flutter", "Clean Architecture", "Networking"],
  ),
  Project(
    images: "assets/icons/saramji.png",
    title: "Saramji Protfolio ⚡",
    description:
        "Saramji Protfolio is a responsive and dynamic portfolio website built with Flutter , showcasing a collection of my projects and skills.",
    links: [
      "https://github.com/elsaramji/store-hup",
      "https://appetize.io/app/b_444qr5jr4x3bywkg2agvrfx2qi?device=pixel7&osVersion=13.0&toolbar=true",
    ],
    technologies: [
      "Flutter",
      "Clean Architecture",
      "Responsive & Adaptive Design",
    ],
  ),
];
