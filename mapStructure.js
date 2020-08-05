class Map {
  hash = {};

  insert = (key, value) => this.hash[key] = value;

  get = key => this.hash[key];

  delete = key => this.hash.delete(key);

  getRandomKey = () => {
    return Object.keys(hash)[Math.floor(Math.random() * this.hash.length)];
  }
}