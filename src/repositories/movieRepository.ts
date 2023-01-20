import {connection}  from "../database/db.js";
import { Movie } from "../protocols/movieProtocol.js";


export async function insertMovie(movie: Movie){
    console.log(movie)
   return await connection.query(`
    INSERT INTO movie (title, genres, platform, watched, comment) VALUES ($1, $2, $3, false, null)`, [movie.title, movie.genres, movie.platform])
}

export async function getAllMovies(){
    return await connection.query(`
    SELECT * FROM movie`)
}

export async function getMovieById(id: number){
    return await connection.query(`
    SELECT * FROM movie WHERE id = $1`, [id] )
}

export async function updateStatus(comment: string, id: number){
    return await connection.query(`UPDATE movie SET watched = true, comment = $1 WHERE id = $2
    `, [comment, id])
}

export async function deleteMovieById(id: number){
    return await connection.query(`
    DELETE FROM movie WHERE id = $1
    `, [id])
}