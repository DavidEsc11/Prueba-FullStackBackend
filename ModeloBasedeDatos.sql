CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    NombreUsuario VARCHAR(100) NOT NULL,
 
);

CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    UsuarioID INT UNIQUE,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    
);

CREATE TABLE Videos (
    VideoID INT PRIMARY KEY,
    Titulo VARCHAR(200) NOT NULL,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    
);

CREATE TABLE Colaboradores (
    ColaboradorID INT PRIMARY KEY,
    VideoID INT,
    AutorID INT,
    FOREIGN KEY (VideoID) REFERENCES Videos(VideoID),
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)

);

CREATE TABLE Comentarios (
    ComentarioID INT PRIMARY KEY,
    VideoID INT,
    UsuarioID INT,
    TextoComentario TEXT NOT NULL,
    FechaComentario TIMESTAMP,
    FOREIGN KEY (VideoID) REFERENCES Videos(VideoID),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
    
);

CREATE TABLE Revisiones (
    RevisionID INT PRIMARY KEY,
    VideoID INT,
    UsuarioID INT,
    Calificacion DECIMAL(2,1) NOT NULL,
    TextoRevision TEXT,
    FechaRevision TIMESTAMP,
    FOREIGN KEY (VideoID) REFERENCES Videos(VideoID),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
    
);
