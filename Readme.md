### Vagrant Fishes Setup Steps

1. Get the OS needed for this lovely box'o'fun.

```
vagrant box add ubuntu/trusty64
```

2. Run Vagrant up

```
vagrant up
```

3. Fishsticks

```
echo "MOO, CHEESE, FISHSTICKS"
```
### Notes
Things it will do:
- Install G++, make, git (init.sh)
- Install nvm via curl
- Install and alias node v0.12 as legacy
- Install and alias node v4 as default
- Install mongodb
- Share the development folder to `/web`
- Echo Moo, Cheese, Fishsticks

If you want to test the node server, go into the `/web/server` directory, do an npm install, and use the npm script `npm run server`.
