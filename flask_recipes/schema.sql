DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS Recipes;
DROP TABLE IF EXISTS RecipesIngredients;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE Recipe (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  source_url TEXT,
  source_author TEXT,
  source_description TEXT,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  instructions TEXT NOT NULL,
  cooktime INTEGER,
  preptime INTEGER,
  notes TEXT,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE RecipeIngredients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  recipe_id INTEGER NOT NULL,
  ingredient TEXT NOT NULL, 
  note TEXT,
  FOREIGN KEY (recipe_id) REFERENCES recipes (id)
);

