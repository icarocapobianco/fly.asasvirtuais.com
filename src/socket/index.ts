import { Server } from 'socket.io'
import { auth0Middleware } from 'auth0-socketio'

export default function( io : Server ) {
    io.use(auth0Middleware('asasvirtuais.us.auth0.com'))
}

