var icon = [
    L.icon({
        iconUrl: 'https://i.imgur.com/JV4loMJ.png' // Top
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/wLFQgZs.png' // Left
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/2WSSoiu.png' // Bottom
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/ZSsbyUo.png' // Right
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/9OiLpQI.png' // Top Gather
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/h7G8p7A.png' // Left Gather
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/FSn1xeT.png' // Bottom Gather
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/o5sfNn9.png' // Right Gather
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/SNNhHRg.png' // Top Fight
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/0FSmYpx.png' // Left Fight
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/bL4qVwp.png' // Bottom Fight
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/Sq9lhLi.png' // Right Fight
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/gUc6MRO.png' // Top Bank
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/7Lym2WO.png' // Left Bank
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/4CcFRJQ.png' // Bottom Bank
    }),
    L.icon({
        iconUrl: 'https://i.imgur.com/eGIMZAD.png' // Right Bank
    }),
];

var actualMap;
var pathData = [];
var bankData = [];
var ressources = [
    [1, "Frêne"],
    [8, "Chêne"],
    [17, "Fer"],
    [24, "Argent"],
    [25, "Or"],
    [26, "Pierre de Bauxite"],
    [28, "If"],
    [29, "Ebène"],
    [30, "Orme"],
    [31, "Erable"],
    [32, "Charme"],
    [33, "Châtaignier"],
    [34, "Noyer"],
    [35, "Merisier"],
    [37, "Pierre de Kobalte"],
    [38, "Blé"],
    [39, "Houblon"],
    [42, "Lin"],
    [43, "Orge"],
    [44, "Seigle"],
    [45, "Avoine"],
    [46, "Chanvre"],
    [47, "Malt"],
    [48, "Tas de patates"],
    [52, "Etain"],
    [53, "Pierre Cuivrée"],
    [54, "Manganèse"],
    [55, "Bronze"],
    [61, "Edelweiss"],
    [63, "Froment"],
    [64, "Epeautre"],
    [65, "Sorgho"],
    [66, "Menthe Sauvage"],
    [67, "Trèfle à 5 feuilles"],
    [68, "Orchidée Freyesque"],
    [71, "Greuvette"],
    [72, "Somoon Agressif"],
    [73, "Pwoulpe"],
    [74, "Truite"],
    [75, "Goujon"],
    [76, "Poisson-Chaton"],
    [77, "Crabe"],
    [78, "Poisson Pané"],
    [79, "Carpe d'Iem"],
    [80, "Truite Vaseuse"],
    [81, "Sardine Brillante"],
    [82, "Coton"],
    [84, "Puits"],
    [98, "Bombu"],
    [99, "Ombre étrange"],
    [100, "Pichon"],
    [101, "Oliviolet"],
    [102, "Machine de force"],
    [104, "Koinkoin"],
    [108, "Bambou"],
    [109, "Bambou sombre"],
    [110, "Bambou sacré"],
    [111, "Riz"],
    [112, "Pandouille"],
    [113, "Dolomite"],
    [114, "Silicate"],
    [121, "Kaliptus"],
    [131, "Perce-neige"],
    [132, "Poisskaille"],
    [133, "Tremble"],
    [134, "Frostiz"],
    [135, "Obsidienne"],
    [136, "Coquillage"],
    [137, "Machine à coudre de Poss'Ybel"],
    [138, "Fabrique"],
    [139, "Table de cuisine de mauvaise qualité"],
    [140, "Atelier de mauvaise qualité"],
    [141, "Établi de mauvaise qualité"],
    [142, "Machine à coudre de mauvaise qualité"],
    [143, "Machine à jouets"],
    [144, "Pressoir à poisson"],
    [145, "Atelier d'Emballage"],
    [146, "Paquet Cadeau"],
    [147, "Atelier d'emballage de cadeaux"],
    [148, "Atelier des alchimistes"],
    [149, "Atelier des bijoutiers"],
    [150, "Atelier des bouchers"],
    [151, "Atelier des bouchers et chasseurs"],
    [152, "Atelier des boucliers"],
    [153, "Atelier des boulangers"],
    [154, "Atelier des bricoleurs"],
    [155, "Atelier des bûcherons"],
    [156, "Atelier des chasseurs"],
    [157, "Atelier des cordonniers"],
    [158, "Atelier des forgemages"],
    [159, "Atelier des forgerons"],
    [160, "Atelier des mineurs"],
    [161, "Atelier des paysans"],
    [162, "Atelier des poissonniers"],
    [163, "Atelier des poissonniers et pêcheurs"],
    [164, "Atelier des pêcheurs"],
    [165, "Atelier des sculpteurs"],
    [166, "Atelier des tailleurs"],
    [167, "Arène"],
    [168, "Banque"],
    [169, "Bar Akouda"],
    [170, "Bibliothèque"],
    [171, "Boutiques de Nowel"],
    [172, "Dojo"],
    [173, "Église"],
    [174, "Épicerie"],
    [175, "Fabricant de skis"],
    [176, "Hôtel de ville"],
    [177, "Hôtel des métiers"],
    [178, "Kanojedo"],
    [179, "Kolizéum"],
    [180, "Milice"],
    [181, "Médecin de Frigost"],
    [182, "Taverne"],
    [183, "Taverne Alakarte"],
    [184, "Taverne Atolmond"],
    [185, "Taverne d'Argent"],
    [186, "Taverne de Djaul"],
    [187, "Taverne de la Bagrutte"],
    [188, "Taverne de la Chopenbois"],
    [189, "Taverne de la Misère"],
    [190, "Taverne de la Tabasse"],
    [191, "Taverne de Lisa Kaya"],
    [192, "Taverne de Sakaï"],
    [193, "Taverne du Bwork"],
    [194, "Taverne du Chabrulé"],
    [195, "Taverne du Dernier Refuge"],
    [196, "Taverne du Ferayeur"],
    [197, "Taverne du Feubuk"],
    [198, "Taverne du Pandawa Ivre"],
    [199, "Taverne du Paradis Frigostien"],
    [200, "Taverne du Pinchaut"],
    [201, "Taverne du Ripate"],
    [202, "Temple des guildes"],
    [203, "Tour de Brâkmar"],
    [204, "Tour des archives"],
    [205, "Tour des ordres"],
    [206, "Sous-marin Steamer"],
    [207, "Autel"],
    [208, "Krosmaster"],
    [209, "Atelier d'Isidor Fèvre"],
    [210, "Atelier d'Al Shab"],
    [211, "Atelier de Frigostine"],
    [212, "Atelier de Francky"],
    [213, "Atelier de Dutch"],
    [214, "Atelier de Brokkeitri"],
    [215, "Atelier de Laurent Part"],
    [216, "Atelier de Clarisse Tosha"],
    [217, "Atelier d'Annette Daimpeau"],
    [218, "Atelier de Carla Garfield"],
    [219, "Métier d'Avenir"],
    [220, "Tonneau d'explosifs"],
    [221, "Fleur de Sutol"],
    [222, "Barbecue"],
    [223, "Cawotte fraîche"],
    [224, "Alambic patiné de l'hôtel des métiers"],
    [225, "Bouteille de Rhum"],
    [226, "Ascenseur"],
    [227, "Champignon"],
    [228, "Table de Bowisse"],
    [229, "Atelier de Mériana"],
    [230, "Portail des Bworks"],
    [231, "Distributeur de missions"],
    [232, "Portail"],
    [233, "Coffre en or"],
    [234, "Glaçon"],
    [235, "Aller vers"],
    [236, "Pupitre"],
    [237, "Table de planification"],
    [238, "Aller vers l'instance A"],
    [239, "Aller vers l'instance B"],
    [240, "Aller vers l'instance C"],
    [241, "Vieux Coffre XXIII"],
    [242, "Etabli d'horloger"],
    [243, "Coffre XI"],
    [244, "Coffre XXIII"],
    [245, "Coffre XXXI"],
    [246, "Coffre LIX"],
    [247, "Horloge en avance de 2 minutes"],
    [248, "Horloge en retard de 3 minutes"],
    [249, "Horloge en avance de 7 minutes"],
    [250, "Horloge en retard de 8 minutes"],
    [251, "Œufs de Tempax"],
    [252, "Atelier des Voyageurs"],
    [253, "Portail Eliotrope"],
    [254, "Ortie"],
    [255, "Sauge"],
    [256, "Ginseng"],
    [257, "Belladone"],
    [258, "Mandragore"],
    [259, "Noisetier"],
    [260, "Maïs"],
    [261, "Millet"],
    [262, "Bloc de pierre"],
    [263, "Brochet"],
    [264, "Kralamoure"],
    [265, "Anguille"],
    [266, "Dorade Grise"],
    [267, "Perche"],
    [268, "Raie"],
    [269, "Lotte"],
    [270, "Requin Marteau-Faucille"],
    [271, "Bar Rikain"],
    [272, "Morue"],
    [273, "Tanche"],
    [274, "Espadon"],
    [275, "Enclume de Mulic Bere"],
    [276, "Établi de Mulic Bere"],
    [277, "Atelier de Mulic Bere"],
    [278, "Assembleur de Mulic Bere"],
    [279, "Atelier du Mage Ax"],
    [280, "Plate-forme Huppermage"],
    [281, "Trèfle à 4 feuilles"],
    [282, "Indiquer une sortie"],
    [283, "Chathon"],
    [284, "Escalier"],
    [285, "Porte blindée"],
    [286, "Atelier indicible"],
    [287, "Aquajou"],
    [288, "Salikrone"],
    [289, "Quisnoa"],
    [290, "Patelle"],
    [291, "Écume de mer"],
    [292, "Table de Travail"],
    [293, "Écume de mer"],
    [294, "Aquajou"],
    [295, "Salikrone"],
    [296, "Quisnoa"],
    [297, "Patelle"],
    [298, "Atelier de Natacha Manka"],
    [299, "Œufs frais"]
];
var picker = 4;
var gatherData = [];
var loadingFile = false;

document.getElementById('pickRessourceContainer').innerHTML +=
    '<div id="pathSelecter" style= "  background: #212121; border-radius: 5px; padding: 10px; text-align:left; color: #fff; text-shadow: 0 0px 10px #000; box-shadow: 0 0 10px 0px rgba(0,0,0,0.6); font-family: arial; opacity: 0.95;">' +
    '<table>' +
    '<tr>' +
    '<td><input id="pathTop" type="checkbox"> Haut </td>' +
    '<td><input id="pathBottom" type="checkbox"> Bas </td>' +
    '</tr>' +
    '<tr>' +
    '<td><input id="pathLeft" type="checkbox"> Gauche </td>' +
    '<td><input id="pathRight" type="checkbox"> Droite</td>' +
    '</tr>' +
    '</table>' +
    '</br>' +
    '<div style="height: 3px;background-color: #151515;"></div>' +
    '</br>' +
    '<table>' +
    '<tr>' +
    '<td><input id="gather" type="checkbox"> Récolter </td>' +
    '<td><input id="fight" type="checkbox"> Combattre </td>' +
    '</tr>' +
    '<tr>' +
    '<td><input id="bank" type="checkbox"> Banque </td>' +
    '</tr>' +
    '</table>' +
    '</br>' +
    '<div style="height: 3px;background-color: #151515;"></div>' +
    '</br>' +
    '<div style="text-align: center;">Ressources à récolter :</div>' +
    '</br>' +
    '<div id="ressourcePickerBot" style="text-align: center;"><span id="ressourcePickerCreator" class="pickRessource" onclick="newRessourcePicker();" style="background-color: #0000008a; background-position: -260px 0px;">+</span></div>' +
    '</br>' +
    '<div style="height: 3px;background-color: #151515;"></div>' +
    '</br>' +
    '<div style="text-align: center;"><button id="saveFile" onclick="generate()">Sauvegarder</button></div>' +
    '</br>' +
    '<div style="text-align: center;"><button id="deletePath" onclick="deletePath()">Supprimer</button></div>' +
    '</br>' +
    '<div style="text-align: center;"><input type="file" id="file" name="file"></div>' +
    '</div>';

function checkMaps(mapcoord, array) {
    for (let key = 0; key < array.length; key++) {
        if (array[key][0] == mapcoord) {
            return true;
        }
    }
    return false;
}

function getMapIndex(mapcoord, array) {
    for (let key = 0; key < array.length; key++) {
        if (array[key][0] == mapcoord) {
            return key;
        }
    }
}

function onMapClick() {
    // L.marker(e.latlng).addTo(map);
    // console.log(e.latlng)
    // popup
    //     .setLatLng(e.latlng)
    //     .setContent("You clicked the map at " + e.latlng.toString())
    //     .openOn(map);
    if (!loadingFile)
        actualMap = document.getElementById('mapCoordinates').innerText;

    if (document.getElementById("bank").checked) {
        if (!checkMaps(actualMap, bankData)) {
            bankData.push([actualMap, false, undefined, false, undefined, false, undefined, false, undefined, false]);
            createMarker(getMapIndex(actualMap, bankData), bankData);
            deleteEmptyPath(bankData);
        } else if (checkMaps(actualMap, bankData)) {
            removeArrow(getMapIndex(actualMap, bankData), bankData);
            deleteEmptyPath(bankData);
        }
    } else {
        if (!checkMaps(actualMap, pathData)) {
            pathData.push([actualMap, false, undefined, false, undefined, false, undefined, false, undefined, false, false]);
            createMarker(getMapIndex(actualMap, pathData), pathData);
            deleteEmptyPath(pathData);
        } else if (checkMaps(actualMap, pathData)) {
            removeArrow(getMapIndex(actualMap, pathData), pathData);
            deleteEmptyPath(pathData);
        }
    }

    console.clear();
    for (let key in pathData) {
        console.log(key + ', map : ' + pathData[key][0] + ', top : ' + pathData[key][1] + ', bottom : ' + pathData[key][5] + ', right : ' + pathData[key][7] + ', left : ' + pathData[key][3] + ', gather : ' + pathData[key][9] + ', fight : ' + pathData[key][10]);
    }
}

function deleteEmptyPath(array) {
    if (!array[getMapIndex(actualMap, array)][1] && !array[getMapIndex(actualMap, array)][3] && !array[getMapIndex(actualMap, array)][5] && !array[getMapIndex(actualMap, array)][7]) {
        array.splice(getMapIndex(actualMap, array), 1);
    }
}

function removeArrow(key, array) {
    removeArrowWay(key, array, "pathTop", 2, 4, 8, 12, 0, 1);
    removeArrowWay(key, array, "pathLeft", 4, 5, 9, 14, 1, 3);
    removeArrowWay(key, array, "pathBottom", 6, 6, 10, 15, 2, 5);
    removeArrowWay(key, array, "pathRight", 8, 7, 11, 13, 3, 7);
}

function removeArrowWay(key, array, className, wayMarker, gatherIcon, fightIcon, bankIcon, moveIcon, wayToggle, x, y) {
    if (document.getElementById(className).checked) {
        if (array[key][wayMarker] !== undefined) {
            array[key][wayToggle] = false;
            map.removeLayer(array[key][wayMarker]);
            array[key][wayMarker] = undefined;
        } else createMarkerWay(key, array, className, wayMarker, gatherIcon, fightIcon, bankIcon, moveIcon, wayToggle, x, y)
    }
}

function createMarker(key, array) {
    createMarkerWay(key, array, "pathTop", 2, 4, 8, 12, 0, 1, 0.3, 0);
    createMarkerWay(key, array, "pathLeft", 4, 5, 9, 14, 1, 3, 0.1, 0.25);
    createMarkerWay(key, array, "pathBottom", 6, 6, 10, 15, 2, 5, 0.3, 0.4);
    createMarkerWay(key, array, "pathRight", 8, 7, 11, 13, 3, 7, 0.5, 0.25);
}

function createMarkerWay(key, array, className, wayMarker, gatherIcon, fightIcon, bankIcon, moveIcon, wayToggle, x, y) {
    if (document.getElementById(className).checked) {
        if (document.getElementById("gather").checked) {
            array[key][wayMarker] = L.marker(dofusXYToMapXY(actualMap.split(", ")[0] * 1 + x, actualMap.split(", ")[1] * 1 + y), {
                interactive: false,
                zIndexOffset: 1000,
                icon: icon[gatherIcon]
            }).addTo(map);
            array[key][9] = true;
        } else if (document.getElementById("fight").checked) {
            array[key][wayMarker] = L.marker(dofusXYToMapXY(actualMap.split(", ")[0] * 1 + x, actualMap.split(", ")[1] * 1 + y), {
                interactive: false,
                zIndexOffset: 1000,
                icon: icon[fightIcon]
            }).addTo(map);
            array[key][10] = true;
        } else if (document.getElementById("bank").checked) {
            array[key][wayMarker] = L.marker(dofusXYToMapXY(actualMap.split(", ")[0] * 1 + (x + 0.1), actualMap.split(", ")[1] * 1 + (y + 0.1)), {
                interactive: false,
                zIndexOffset: 1000,
                icon: icon[bankIcon]
            }).addTo(map);
            array[key][9] = true;
        } else {
            array[key][wayMarker] = L.marker(dofusXYToMapXY(actualMap.split(", ")[0] * 1 + x, actualMap.split(", ")[1] * 1 + y), {
                interactive: false,
                zIndexOffset: 1000,
                icon: icon[moveIcon]
            }).addTo(map);
        }
        array[key][wayToggle] = true;
    }
}

function newRessourcePicker() {
    document.getElementById("ressourcePickerBot").innerHTML = '<span id="pickRessource' + picker + '" class="pickRessource ressourceColor1" onclick="clickOnTypePicker(\'' + picker + '\');" data-name="" data-ressourceid=""' +
        'style="background-position: -260px 0px; line-height: 49px !important; width: 49px !important; margin: 2px !important; height: 49px !important;">?</span>' + document.getElementById("ressourcePickerBot").innerHTML;
    gatherData.push('pickRessource' + picker);
    picker += 1;
}

function pathGenerator(index, array) {
    var path = "";
    if (array.length !== 0) {
        if (array[index][1])
            path = "top";
        if (array[index][5])
            path += (path === "" ? "" : "|") + "bottom";
        if (array[index][3])
            path += (path === "" ? "" : "|") + "left";
        if (array[index][7])
            path += (path === "" ? "" : "|") + "right";
        return path;
    }
}

function gatherFigh(index) {
    var path = "";
    if (pathData[index][9])
        path = ", gather = true";
    if (pathData[index][10])
        path += ", fight = true";
    return path;
}

function addGather() {
    let res = "";
    for (let index = 0; index < gatherData.length; index++) {
        let str = document.getElementById(gatherData[index]).outerHTML;
        let regex = /data-name=\"(.*?)\"/g;
        let matche = regex.exec(str);
        for (let i = 0; i < ressources.length; i++) {
            if (ressources[i][1] == matche[1]) {
                res += '\t' + ressources[i][0] + ',' + ' -- ' + ressources[i][1] + '\r\n';
            }
        }
    }
    return res;
}

function generate() {
    var txt = "-- Generated On Dofus-Map with Drigtime's SwiftPath Script Maker --\r\n";
    txt += "GATHER = {\r\n";
    txt += addGather();
    txt += "} -- Les éléments à récolter\r\n" +
        "OPEN_BAGS = true -- Ouvrir les sacs de ressources au fur et à mesure\r\n" +
        "AUTO_DELETE = { } -- Les éléments à supprimer\r\n\r\n" +
        "MAX_MONSTERS = 8 -- Le nombre maximum de monstres dans un groupe à combattre.\r\n" +
        "MIN_MONSTERS = 1 -- Le nombre minimum de monstres dans un groupe à combattre.\r\n\r\n" +
        "FORBIDDEN_MONSTERS = { } -- Monstres interdits\r\n" +
        "FORCE_MONSTERS = { } -- Monstres obligatoires\r\n\r\n" +
        "MAX_COMBAT = 800 -- Nombre de combats maximum\r\n" +
        "\r\nfunction move()\r\n\treturn {\r\n" +
        "\t\t{map = \"83887104\", path = \"396\"}, --Interieur banque Astrub vers Sortie--\r\n" +
        "\t\t{map = \"54534165\", path = \"424\"}, --Interieur banque Frigost vers Sortie--\r\n" +
        "\t\t{map = \"2885641\", path = \"424\"}, --Interieur banque Bonta vers Sortie--\r\n" +
        "\t\t{map = \"99095051\", path = \"410\"}, --Interieur banque Amakna vers Sortie--\r\n" +
        "\t\t{map = \"8912911\", path = \"424\"}, --Interieur banque Brakmar vers Sortie--\r\n" +
        "\t\t{map = \"91753985\", path = \"396\"}, --Interieur banque Sufokia vers Sortie (Non fait)--\r\n" +
        "\t\t{map = \"86511105\", door = \"452\"}, --Interieur banque Ottomaï vers Sortie--\r\n" +
        "\t\t{map = \"8129542\", path = \"409\"}, --Interieur banque Pandala vers Sortie--\r\n" +
        "\t\t{map = \"84935175\", path = \"425\"}, --Interieur banque Montagne Koalak vers Sortie--\r\n";
    for (let key in pathData) {
        txt += '\t\t{map = "' + pathData[key][0].replace(" ", "") + '", path = "' + pathGenerator(key, pathData) + '"' + gatherFigh(key) + '},\r\n';
    }
    txt += "\t}\r\nend\r\n\r\nfunction bank()\r\n\treturn {\r\n";
    for (let key in bankData) {
        txt += '\t\t{map = "' + bankData[key][0].replace(" ", "") + '", path = "' + pathGenerator(key, bankData) + '"},\r\n';
    }
    txt += "\t\t{map = \"84674566\", door = \"303\"}, --Devant banque Astrub--\r\n" +
        "\t\t{map = \"83887104\", path = \"396\", npcBank = true}, --Banque Astrub--\r\n" +
        "\t\t{map = \"54172457\", door = \"358\"}, --Devant banque Frigost--\r\n" +
        "\t\t{map = \"54534165\", path = \"424\", npcBank = true}, --Banque Frigost--\r\n" +
        "\t\t{map = \"147254\", door = \"383\"}, --Devant banque Bonta--\r\n" +
        "\t\t{map = \"2885641\", path = \"424\", npcBank = true}, --Banque Bonta--\r\n" +
        "\t\t{map = \"88081177\", door = \"216\"}, --Devant banque Amakna--\r\n" +
        "\t\t{map = \"99095051\", path = \"410\", npcBank = true}, --Banque Amakna--\r\n" +
        "\t\t{map = \"144931\", door = \"248\"}, --Devant banque Brakmar--\r\n" +
        "\t\t{map = \"8912911\", path = \"424\", npcBank = true}, --Banque Brakmar--\r\n" +
        "\t\t{map = \"90703872\", door = \"248\"}, --Devant banque Sufokia (Non fait)--\r\n" +
        "\t\t{map = \"91753985\", path = \"396\", npcBank = true}, --Banque Sufokia--\r\n" +
        "\t\t{map = \"155157\", door = \"355\"}, --Devant banque Ottomaï--\r\n" +
        "\t\t{map = \"86511105\", door = \"452\", npcBank = true}, --Banque Ottomaï--\r\n" +
        "\t\t{map = \"12580\", door = \"284\"}, --Devant banque Pandala--\r\n" +
        "\t\t{map = \"8129542\", path = \"409\", npcBank = true}, --Banque Pandala--\r\n" +
        "\t\t{map = \"73400323\", door = \"330\"}, --Devant banque Montagne Koalak--\r\n" +
        "\t\t{map = \"84935175\", path = \"425\", npcBank = true}, --Banque Montagne Koalak--\r\n\t}\r\nend\r\n";
    saveTextAsFile(txt);
}

function saveTextAsFile(txt) {
    var textToSaveAsBlob = new Blob([txt], {
        type: "text/plain"
    });
    var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
    var fileNameToSaveAs = "Trajet.lua";
    var downloadLink = document.createElement("a");
    downloadLink.download = fileNameToSaveAs;
    downloadLink.innerHTML = "Download File";
    downloadLink.href = textToSaveAsURL;
    downloadLink.style.display = "none";
    document.body.appendChild(downloadLink);
    downloadLink.click();
}

function deletePath() {
    for (let index = 0; index < pathData.length; index) {
        if (pathData[index][2]) map.removeLayer(pathData[index][2]);
        if (pathData[index][4]) map.removeLayer(pathData[index][4]);
        if (pathData[index][6]) map.removeLayer(pathData[index][6]);
        if (pathData[index][8]) map.removeLayer(pathData[index][8]);
        pathData.splice(index, 1);
    }
    for (let index = 0; index < bankData.length; index) {
        if (bankData[index][2]) map.removeLayer(bankData[index][2]);
        if (bankData[index][4]) map.removeLayer(bankData[index][4]);
        if (bankData[index][6]) map.removeLayer(bankData[index][6]);
        if (bankData[index][8]) map.removeLayer(bankData[index][8]);
        bankData.splice(index, 1);
    }
    console.clear();
}

document.getElementById('file').onchange = function () {

    var file = this.files[0];
    var content;
    var reader = new FileReader();
    reader.onload = function (progressEvent) {
        // Entire file
        content = this.result;
        let regexPath = /function move\(\)[\s\S]+?return.*?{\r\n([\s\S]+?)}\r\n.*end/g;
        let regexBank = /function bank\(\)[\s\S]+?return.*?{\r\n([\s\S]+?)}\r\n.*end/g;
        let result;
        let matche = regexBank.exec(content);
        loadingFile = true;
        if (matche !== null) {
            result = matche[1];
            result = result.split('\r\n');
            for (let index = 0; index < result.length; index++) {
                matche = /map.?=.?"(.*?)"/g.exec(result[index]);
                if (matche !== null) actualMap = matche[1];
                actualMap = actualMap.replace(/,/g, ", ");
                if (/(-|)[0-9]+?,\s(-|)[0-9]+?/g.exec(actualMap)) {
                    matche = /top/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathTop").checked = true;
                    matche = /left/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathLeft").checked = true;
                    matche = /bottom/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathBottom").checked = true;
                    matche = /right/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathRight").checked = true;
                    document.getElementById("bank").checked = true;
                    onMapClick();
                    document.getElementById("pathTop").checked = false;
                    document.getElementById("pathLeft").checked = false;
                    document.getElementById("pathBottom").checked = false;
                    document.getElementById("pathRight").checked = false;
                    document.getElementById("bank").checked = false;
                }
            }
        }

        matche = regexPath.exec(content);
        if (matche !== null) {
            result = matche[1];
            result = result.split('\r\n');
            for (let index = 0; index < result.length; index++) {
                matche = /map.?=.?"(.*?)"/g.exec(result[index]);
                if (matche !== null) actualMap = matche[1];
                actualMap = actualMap.replace(/,/g, ", ");
                if (/(-|)[0-9]+?,\s(-|)[0-9]+?/g.exec(actualMap)) {
                    matche = /top/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathTop").checked = true;
                    matche = /left/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathLeft").checked = true;
                    matche = /bottom/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathBottom").checked = true;
                    matche = /right/g.exec(result[index]);
                    if (matche !== null) document.getElementById("pathRight").checked = true;
                    matche = /gather/g.exec(result[index]);
                    if (matche !== null) document.getElementById("gather").checked = true;
                    matche = /fight/g.exec(result[index]);
                    if (matche !== null) document.getElementById("fight").checked = true;
                    onMapClick();
                    document.getElementById("pathTop").checked = false;
                    document.getElementById("pathLeft").checked = false;
                    document.getElementById("pathBottom").checked = false;
                    document.getElementById("pathRight").checked = false;
                    document.getElementById("gather").checked = false;
                    document.getElementById("fight").checked = false;
                }
            }
        }
        loadingFile = false;
    };
    reader.readAsText(file);
};

function keypressHandler(evt) {
    var keyCode = evt.key;
    switch (keyCode) {
        case "z":
            if (!document.getElementById("pathTop").checked)
                document.getElementById("pathTop").checked = true;
            else
                document.getElementById("pathTop").checked = false;
            break;
        case "q":
            if (!document.getElementById("pathLeft").checked)
                document.getElementById("pathLeft").checked = true;
            else
                document.getElementById("pathLeft").checked = false;
            break;
        case "s":
            if (!document.getElementById("pathBottom").checked)
                document.getElementById("pathBottom").checked = true;
            else
                document.getElementById("pathBottom").checked = false;
            break;
        case "d":
            if (!document.getElementById("pathRight").checked)
                document.getElementById("pathRight").checked = true;
            else
                document.getElementById("pathRight").checked = false;
            break;
        default:
            break;
    }
}

map.on('click', onMapClick);
document.addEventListener("keypress", keypressHandler, false);
