import('../src/Main.elm')
  .then(({ Elm }) => {
    const elmApp = document.querySelector('.elm');
    Elm.Main.init({node: elmApp});
  });
