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
- 
### Test Node
You can check node by doing a few things.
 - `nvm current` will display the current node version
 - `node -v` will display the node version as well
 - Navigate to `/web/server` and use `npm run server` should start an express server running at port `3000`. It'll display your typical 'Hello World' page
 
### Test MongoDB
- `mongo` cmd will start a connection to the mongo instance running on the vm
- `sudo service mongod start` will start mongo
- `sudo service mongod stop` will stop mongo
