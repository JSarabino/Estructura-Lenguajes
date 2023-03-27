const tasks = [];       //Almacenar tareas
let time = 0;           // Lleva la cuenta regresiva
let timer = null;       //Se le asigna funcion setInterval: ejecutar un pedazo de codigo cada determinado intervalo de tiempo
let timerBreak = null;  //Se le asigna funcion setInterval: ejecutar un pedazo de codigo cada determinado intervalo de tiempo
let current = null;     //Tarea actual que se esta ejecutando

//Referencias elementos html
const bAdd = document.querySelector("#bAdd");       //Boton agregar
const itTask = document.querySelector("#itTask");   //Caja de texto
const form = document.querySelector("#form");       //Formulario
const taskName = document.querySelector('#time #taskName'); //Consulta las etiquetas time y taskName

renderTime();
renderTasks();

//Se dispara una funcion cuando se dispare el metodo 'submit'
form.addEventListener("submit", (e) => {
    e.preventDefault();         //Se anula el funcionamiento nativo del formulario(Para dar nuestro propio manejo)
    if (itTask.value !== "") {  //si caja de texto es != de vacio
      createTask(itTask.value); //Creamos una tarea con la funcion createTask
      itTask.value = "";        //Vaciamos la caja de texto
      renderTasks();            //Renderiza las tareas
    }
  });

//Crear la tarea
function createTask(value) {  //Pedimos un valor
    //Definimos objeto nuevaTarea
    const newTask = {
      id: (Math.random() * 100).toString(36).slice(3), //Id de la tarea dinamico
      title: value,                                    //Titulo
      completed: false,                                //Estado
    };
  
    tasks.unshift(newTask); //Agregar a arreglo de tareas (unshift para gregar un elemento a la primera posicion )
}

//Permite tomar los elementos de las tareas y generar un html que se inyecta en un contenedor
//map permite realizar operaciones a cada uno de los elementos del arreglo
function renderTasks() {
    const html = tasks.map(task => { 
      return `                         
          <div class="task">
          <div class="completed">${ 
            task.completed 
              ? "<span class='done'>Done</span>" 
              : `<button class="start-button" data-id="${task.id}">Start</button></div>`
          }
              <div class="title">${task.title}</div> 
          </div>
          `;
    });//Al final del map devuelve el arreglo con la estructura html anterior para cada elemento
    const tasksContainer = document.querySelector("#tasks"); //Referencia al contenedor en el archivo html
    tasksContainer.innerHTML = html.join("");//Transformamos el arreglo de strings en un solo string con el metodo join
    
    //Botones
    const startButtons = document.querySelectorAll(".task .start-button"); //Elegimos los botones que agregamos en el html de cada elemento del arreglo
    startButtons.forEach(button => { 
      button.addEventListener("click", e => { //Evento si se da click
        if (!timer) { //Si no existe un tiempo en progreso
            const id = button.getAttribute('data-id');
          startButtonHandler(id); 
          button.textContent = "In progress..."; //Texto cuando inicializa
        }
      });
    });
}

//
function startButtonHandler(id) {
    time = 5; // formato de tiempo
    current = id;   // id de la actividad actual
    const taskIndex = tasks.findIndex(task => task.id === id); //Variable el index de la tarea actual
    taskName.textContent = tasks[taskIndex].title; //Ponemos el nombre de la actividad actual
    
    timer = setInterval(() => { //setInterval permite ejecutar una funcion de forma indefinida, hasta que yo la detenga
      timerHandler(id); //Se ejecuta cada segundo
    }, 1000); // 1s
}

//Manejo del tiempo
function timerHandler(id) {
    time--; //se decrementa en 1
    renderTime(); //Renderizar el tiempo
    if (time === 0) { //Si es igual a cero
      clearInterval(timer); //Detenemos el metodo setInterval
      markComplete(id); //Cambiar estado a completado
      timer = null;
      renderTasks();
      startBreak(); //Descanso
    }
}

//Manejo del tiempo de descanso
function startBreak() {
    time = 5; //Tiempo de descanso
    taskName.textContent = "Break";
    timerBreak = setInterval(() => {
        timerBreakHandler();
    }, 1000);
}
//
function timerBreakHandler() {
    time--; //Decrementamos
    renderTime(); //Renderizamos en el contador
    
    if (time === 0) { //Validar si el tiempo llega a cero
      clearInterval(timerBreak); //Detenemos el setInterval
      current = null; 
      timerBreak = null;
      taskName.textContent = "";
      renderTasks();
    }
}

//Permite darle formato a un numero
function renderTime() {
    const timeDiv = document.querySelector("#time #value"); //Donde se pone el tecto
    const minutes = parseInt(time / 60);
    const seconds = parseInt(time % 60); 
    timeDiv.textContent = `${minutes < 10 ? "0" : ""}${minutes}:${seconds < 10 ? "0" : ""
    }${seconds}`; // 00:00 -> minutos:segundos
  }

//Cambiamos el estado de la actividad actual con el id a true
function markComplete(id) {
    const taskIndex = tasks.findIndex((task) => task.id === id);
    tasks[taskIndex].completed = true;
}