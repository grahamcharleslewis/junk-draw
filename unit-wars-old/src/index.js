// officers = JSON.parse(File.read("data/officers.json"))
// terrains = JSON.parse(File.read("data/terrains.json"))
// units = JSON.parse(File.read("data/units.json"))

// puts officers
// puts terrains
// puts units

// import weapons from '../data/weapons.json' assert { type: 'json' };

const weapons = import('../data/weapons.json', {
    assert: {
        type: 'json'
    }
});

console.log(weapons);
