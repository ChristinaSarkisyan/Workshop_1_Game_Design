{
  "spriteId": {
    "name": "spr_enemy2",
    "path": "sprites/spr_enemy2/spr_enemy2.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_enemy1",
    "path": "objects/obj_enemy1/obj_enemy1.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":true,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_enemy2","path":"objects/obj_enemy2/obj_enemy2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_enemy2","path":"objects/obj_enemy2/obj_enemy2.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"canShoot","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"obj_enemybullet1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMObject",
      ],"resourceVersion":"1.0","name":"shotType","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"30","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shotInterval","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"extraSpeed","path":"objects/obj_enemy1/obj_enemy1.yy",},"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"2","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"scoreValue","path":"objects/obj_enemy1/obj_enemy1.yy",},"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"50","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_enemy2",
  "tags": [],
  "resourceType": "GMObject",
}