import lib;

import scenes.game;

void main() {
  auto game = new Game();
  Scene curScene = new GameScene();
  curScene.load();

  while (game.handleEvent()) {
    if (game.key(SDL_SCANCODE_Q) > 0) {
      break;
    }
    
    Scene nextScene = curScene.update(game);
    curScene.draw(game);
    game.redraw();

    if (nextScene != curScene) {
      curScene = nextScene;
      curScene.load();
      break;
    }
  }
}
