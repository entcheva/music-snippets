export default (state = {}, action) => {
  switch (action.type) {
    case 'LOG_IN':
    return action.payload.data;
    case 'SIGN_UP':
    return action.payload.data;
    case 'FETCH_USERNAME':
    return {username: action.payload.data.username}
    default:
    return state;
  }
}
