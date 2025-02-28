# Flutter To-Do App

## Descripción
Esta es una aplicación de lista de tareas creada con Flutter. Permite a los usuarios agregar tareas con un nombre de usuario, descripción breve y una imagen. Las tareas se muestran en tarjetas dentro de la pantalla principal y pueden marcarse como completadas.

## Características
- Agregar nuevas tareas con título, usuario, contenido y una imagen.
- Listar todas las tareas en la pantalla de inicio.
- Marcar tareas como completadas.
- Manejo del estado con `Provider`.

## Estructura del Proyecto
```
lib/
│── main.dart                # Punto de entrada de la aplicación
│
├── screens/                 # Contiene las pantallas de la app
│   ├── home_screen.dart      # Pantalla principal con la lista de tareas
│   ├── add_task_screen.dart  # Pantalla para agregar tareas
│
├── widgets/                 # Componentes reutilizables
│   ├── task_item.dart        # Widget que representa una tarea en una tarjeta
│
├── models/                  # Modelos de datos
│   ├── task.dart             # Clase Task con sus atributos
│
├── providers/               # Manejo del estado con Provider
│   ├── task_provider.dart    # Provider que gestiona las tareas
│
├── routes/                  # Configuración de las rutas de la app
│   ├── app_routes.dart       # Definición de las rutas de navegación
```

## Instalación
1. Clona este repositorio:
   ```sh
   git clone https://github.com/tu-usuario/flutter-todo.git
   ```
2. Navega al directorio del proyecto:
   ```sh
   cd flutter-todo
   ```
3. Instala las dependencias:
   ```sh
   flutter pub get
   ```
4. Ejecuta la aplicación:
   ```sh
   flutter run
   ```

## Dependencias
Asegúrate de que tu archivo `pubspec.yaml` incluya estas dependencias:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
```

## Licencia
Este proyecto está bajo la licencia MIT. Puedes ver más detalles en el archivo `LICENSE`.

