import axios from 'axios';
import { browserHistory } from 'react-router';

const URL = 'http://localhost:3000/api/v1';

export const createUser = (user) => {

  let response = axios.post(URL + '/users', user)

  .then( (userData) => {
    sessionStorage.setItem( {jwt: userData.data.jwt} );
    browserHistory.push('/users');
    return userData;
  });

  return {
    type: 'SIGN_UP',
    payload: response
  }
}