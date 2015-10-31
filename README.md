# Toucan Toco component boilerplate
> Starter kit for Toucan Toco's components

[![Circle CI](https://circleci.com/gh/ToucanToco/component-boilerplate.svg?style=svg)](https://circleci.com/gh/ToucanToco/component-boilerplate)

### Starting blocks
- Clone
- Replace `tctc-component`, `tctcComponent` by your new component name
- Change your remote to a new repository
- Have fun!

### Build
```bash
# Install npm + bower dependencies and then build
npm install
```

### Develop with the demo
```bash
# Start watching & building component files
npm start
# Indicate to bower the use of this local folder for your component
bower link

# In demo's folder...
cd demo
# Indicate to bower the use of your local component
bower link tctc-component
# Run the demo
npm install
npm start
# http://localhost:8000
```

### Publish
To be written...
