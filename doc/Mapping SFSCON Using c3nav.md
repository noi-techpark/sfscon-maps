<!--
SPDX-FileCopyrightText: 2024 Daniele Gobbetti <ing@danielegobbetti.it>
SPDX-FileCopyrightText: 2024 NOI Techpark <digital@noi.bz.it>
SPDX-FileCopyrightText: 2024 SFSCON Team <info@sfscon.it>

SPDX-License-Identifier: CC0-1.0
-->

# Mapping SFSCON using c3nav

## Mapping Masterplan

### Before you start

An important piece of information to collect before you start mapping is sourcing some base maps. In c3nav you draw over background images: it is important that these images are correctly scaled, as the dimensions are not only displayed on the map itself, but are also used by the internal routing engine to calculate timings. If your event spawns on multiple buildings, it will help a lot if you can get a base map where all the buildings are visible at the same time. If you get a properly sized map from your landlord or your municipality/council, it might be in a vector format (likely a PDF created from a DWG or other CAD proprietary format) or raster. 

If you are working with a vector source file, you must convert it to SVG, as this is the only vector format supported by c3nav.

In you must work with a raster file, it is helpful to convert it into a PNG image, taking into account the following aspects:

1. know the ratio between the image size and the real life, in terms of units (e.g. 1 px = 2 cm = 0.02 m) or the whole image (e.g. artifact in image is 1000 px and in real life is 50 meters wide)
1. since you may only be interested in the walls and other specific features, convert the image to indexed colours to keep the raster file size as small as possible.

If you are working with multiple source files (e.g. for different levels), you are advised to scale all the files to the same value and to align them. See [this section](#setting-the-sources-reference-images-for-each-level) to learn how to import the source images in c3nav.

While you are sourcing the base images, it makes sense to work on an inventory of what you will need to add to your map: c3nav is a very flexible tool and it is very helpful to begin with laying down the concepts before you start drawing.

###### Choosing the database engine

If you are planning to work on a staging environment and regularly update the production environment with your progresses, consider that this is only possible if both environments share the same version of c3nav and the same underlying database engine. More details in the [dedicated section](#backuprestore-aka-importing-and-exporting-your-maps).

### Sfscon main requirements

| Thing                                               | Cardinality | Access limitations                                        | Categorization                               | c3nav Space[^space] | c3nav Area[^area] | c3nav POI[^POI] |
|-----------------------------------------------------|-------------|-----------------------------------------------------------|----------------------------------------------|---------------------|-------------------|-----------------|
| Foyer                                               | 1           | No                                                        | Conference dedicated spaces/areas            | Yes                 | No                | No              |
| Checkin area                                        | 1           | No                                                        | Utility                                      | No                  | Yes               | No              |
| Checkin area (reserved for speakers and supporters) | 1           | No                                                        | Utility                                      | No                  | Yes               | No              |
| Job Wall                                            | 1           | No                                                        | Utility                                      | No                  | Yes               | No              |
| Coffee Station                                      | 1           | No                                                        | Utility, Voucher available, Food & Beverages | Yes                 | No                | No              |
| Conference spaces                                   | \> 1        | No                                                        | Conference Room                              | Yes                 | No                | No              |
| Hackathon spaces                                    | \>1         | only for registered participants                          | Hackathon                                    | Yes                 | No                | No              |
| Elevators                                           | \> 1        | No                                                        | Elevator                                     | Yes                 | No                | No              |
| Stairs                                              | \> 1        | steps                                                     | Stair                                        | Yes                 | No                | No              |
| WC                                                  | \> 1        | some by gender, some universal, some for disabled persons | WC                                           | Yes                 | No                | No              |
| Car parking lot                                     | \> 1        | No                                                        | Parking                                      | Yes                 | No                | No              |
| Car parking payment machine                         | \> 1        | No                                                        | Utility                                      | No                  | No                | Yes             |
| Piazza                                              | 1           | No                                                        | Outside area                                 | Yes                 | No                | No              |
| Bike parking area                                   | 1           | No                                                        | Outside area, Bike Parking                   | No                  | Yes               | No              |
| NOIsteria Café                                      | 1           | No                                                        | Food & Beverages                             | Yes                 | No                | No              |
| NOIsteria Restaurant                                | 1           | No                                                        | Food & Beverages                             | Yes                 | No                | No              |
| Alumix                                              | 1           | No                                                        | Food & Beverages                             | Yes                 | No                | No              |
| ATM                                                 | 1           | No                                                        | Utility                                      | No                  | No                | Yes             |

This table is very specific to the [Sfscon](https://sfscon.it) (an open source conference held every year in November in Bolzano - South Tyrol - Northern Italy), but could hopefully be helpful in collecting the information you need.

As you can see some c3nav specific concepts (space, area, POI) are introduced in the table and explained in the footnotes.

It is important to think about how to categorize the different "things" you will place on the map, and in order to do so some further concepts of c3nav must be introduced and explained:

#### Access restrictions

Access restrictions are relevant to the visibility of items to users of the c3nav system and are not used to show which parts of the venue are generally accessible and which are restricted. The access restriction settings are available throughout the c3nav editor, but are not described in this guide as they were not used in the process of creating a map for SFSCon.

#### Location groups
A location group is used to set graphical features like an icon, label settings, and the background color, but also to specify a title and access restriction[^accessrestriction]. The icon and label settings will be applied to locations belonging to the group, but you can override these when editing single locations. Further you can decide it this location group can be searched by the end user, if it should be offered if the end users wishes to report a missing location and a checkbox "can describe". "Can describe" means it will be used to describe your position or other locations. If you have a location belonging to a group that doesn't have "Can describe" set, that group will not be listed in the generated subtitle of the location. This might be useful if you want people to be able to search for it but the group is not useful for describing other locations since they will belong to better groups for that. Locations whose "Can describe" is false will not be used to describe a position when clicking on a map.

Location groups must belong to exactly one Location group category.

#### Location groups categories
Location Group Categories allow you to categorise your location groups, you must enter a name only composed of letters and numbers, a title and a help text. You can choose a priority and the specific locations for which the location groups of this category will be available (levels[^level], spaces[^space], areas[^area], pois[^poi], dynamic locations[^dynamiclocation]).

All Location Group Categories available for a specific mapping feature will appear in the editor in the right pane: the type of control will respect what is set in the "single selection" field (i.e. if a location group of the same category is mutually exclusive with others).


With those concepts layed out, let's see how the Location groups and their categories help us with "things" in the SFSCON table:

Location Group Category Table


| Name      | Title       | Title (plural) | Help Text             | Level | Space | Area | POI | Dynamic |
|-----------|-------------|----------------|-----------------------|-------|-------|------|-----|---------|
| areatype  | Area Type   | Area Types     | Choose an area type   | N     | N     | Y    | N   | N       |
| spacetype | Space Type  | Space Types    | Choose a space type   | N     | Y     | N    | N   | N       |
| wc        | WC Group    | WC Groups      | Choose the type of WC | N     | Y     | N    | N   | N       |
| poitype   | POI type    | POI types      | Choose a POI Type     | N     | N     | N    | Y   | N       |
| colors    | Color group | Color Groups   | Choose a color        | N     | Y     | Y    | Y   | Y       |


Location Groups Table


| Thing                                               | Category    | Slug            | Title                    | Icon                | Color   |
|-----------------------------------------------------|-------------|-----------------|--------------------------|---------------------|---------|
| Checkin area (reserved for speakers and supporters) | Area Type   |                 | Checkin area (speakers)  |                     |         |
| Checkin area                                        | Area Type   |                 | Checkin area             |                     |         |
| Bike Parking                                        | Area Type   |                 | Bike Parking             | pedal_bike          | #dbb991 |
| Conference Rooms                                    | Space Type  | conference-room | Conference Room          |                     | #d0e8fa |
| Hackathon spaces                                    | Space Type  | hackathon-space | Hackathon Space          |                     | #e3e6ab |
| Elevators                                           | Space Type  | el              | Elevator                 | elevator            | #f4cccc |
| Car parking lot                                     | Space Type  | car-park        | Car Park                 | local_parking       |         |
| WC for women                                        | WC Group    | wc-for-women    | WC for Women             |                     |         |
| WC for men                                          | WC Group    | wc-for-men      | WC for Men               |                     |         |
| Barrier Free WC                                     | WC Group    | wc-barrier-free | Barrier Free WC          |                     |         |
| Car Park Payment Machine                            | POI type    |                 | Car Park Payment Machine | payments            |         |
| ATM                                                 | POI type    |                 | ATM                      | credit_card         |         |
| Water (Pool)                                        | Color Group |                 | Water                    |                     | #e5e4e5 |
| Food and Beverage                                   | Color Group |                 | Food and Beverage        | emoji_food_beverage | #ffe18c |
| WC                                                  | Color Group |                 | WC                       | wc                  | #7b8ebc |
| Wardrobe                                            | Color Group |                 | Wardrobe                 |                     | #dcc6e0 |
| Green Area                                          | Color Group |                 | Green Area               |                     | #bbb68f |
| Conference dedicated spaces/areas                   | Color Group |                 | Conference area          |                     | #d0e8fa |


### Setting the sources (reference images) for each level

Adding map source files to c3nav is a two-step process, the files (either SVG or PNG or other supported raster file types) must be present on the server in the ``src/data/sources`` folder and accessible to the user that is running the application: how to do so depends on how you are deploying your instance and is beyond the scope of this guide. Once the files are in place, you should click the "sources" button in the main c3nav editor page. A list of already defined sources will be shown and a button "New source" allows to define a new reference image for the map.
The sources files are added to a common library that you can enable at will on each level while editing the map. You will be able to enable several files for a single level (e.g. if your venue spans over multiple buildings and you have a separate source file for each building) or to reuse the same source file across different levels. Generally speaking you can safely start adding the source files to the library also before defining the levels you will need.

Note: Enable direct editing before Adding/Editing the sources/layers. Else you get a 500 server error due to a bug. https://github.com/c3nav/c3nav/issues/172 . It's also possible you need to restart the c3nav core to have them show up due to caching.


##### GUI components

The left side of the page will expand to show the image file in an interactive map which can be zoomed and panned, a ruler in the bottom left shows the number of meters (or other units of measure) in a segment.
A button in the top right allows to superimpose other source files for size / alignment comparison.
The blue marker in the map updates the ``fixed x`` and ``fixed y`` input elements.

The right part of the page is composed by a number of controls: the first select box ``Name`` shows all the files that have not been imported as sources yet (or the current source file in case you are editing an existing source).
The second select box ``Copy from`` allows to copy all the other settings from another source file (if you are working with multiple source files with the same scale and positions, you should be able to configure the first file and then copy the settings to the subsequent ones).
The ``scale x`` and ``scale y`` are used to scale the image so that the pixel size correspond to the correct length in real life. If the source image horizontal and vertical resolutions do not match, you should untick the ``lock scale`` checkbox before changing the ``scale`` fields, otherwise they will be both automatically updated once you change the value in each.
With the ``lock scale`` checkbox set, you will be moving the source image when updating either one of the coordinate fields (when updating the ``left coordinate`` field, the ``right coordinate`` field will be automatically adapted, same for top and bottom); if the checkbox is not set you will be free to deform the image when editing the fields, the scale fields on the top will also be updated to reflect the changes.

The actual values will not be persisted until you save them, hence it's always possible to click the ``cancel`` button and start from scratch 

### Setting the Ground Altitudes

Since you are working with the source files, you may find the height markers on them, and it may be helpful to enter them in the ``Ground Altitudes`` menu item. The values you enter there will be needed when defining stairs or ramps (you will need both the height at the bottom and the height at the top), both for moving from one level to the next, and for reaching points at different heights within a level (e.g. a podium). When entering these reference points, you will only be able to refer to the values you have defined in this menu, so it helps to define them early in the process.

## Defining the Label settings

You can define specific ``Label settings`` in the menu: this way you can choose some specific labels to be visible at specific zoom levels and with a specific font size.
You might want to give visibility to specific landmarks that help your visitors orient themselves, like the main rooms of the venue or the main entrance.
All the label settings that you define will be offered as an option in the map entities that offer a label or title.

### Creating your first level

You can now begin putting all this preparatory work into the map. One key concept of c3nav is the ``Level``: the level in the map should refer to one level in reality. You will need to define at least a ``Base Altitude`` (a good practice is to use a value in meters, referring to the ground: use negative values for levels below ground) for each level, this value must be unique but be aware that currently the elements you add to this level will NOT inherit this value as "ground altitude" and you will need to add "altitude markers" in order for the map to be drawn correctly in some cases. The first level you add to the map will be the one shown by default when an end user opens the map, but this can also be overridden by the means of a specific settings in the configuration file.
Another mandatory field is the ``Short Label``: this will be shown in the lower right corner of the map as a level-selector. The stack of the displayed levels will depend upon the relative ``Base Altitude``: the higher the value the higher the position in the stack, regardless to in which order you add the levels.

##### Common Fields and information box
This section applies to the level but also to each other entity for which the fields are shown, therefore we will refer to a generic entity and not to the Level specifically.
The ``Title``, ``Icon`` and ``External URL`` fields influence what is shown in the information box when the Entity is selected. The entity itself might be selected (and its information box will be shoen) if and only if the ``can be searched`` toggle is enabled. This toggle has two effects: firstly the user will be able to enter the title (or part of it) in the search box on the map, and secondly the items which are contained in (e.g. all the spaces within a level, all the areas within a space, etc.) or related to (all locations of a given location group) this entity will display a link to it in their detail panes. If the toggle is not enabled, the user will not be able to search for it and its name will be displayed but not linked in the details pane of the related entities.
Thee ``Icon`` field should be populated with one of the standard material icons names, you can refer to codepoints listed in [this file](https://github.com/c3nav/c3nav/blob/main/src/c3nav/static/material-symbols/MaterialSymbolsOutlined.codepoints), be aware that the icon will not be displayed on the map but only in the search/information box next to the ``Title`` of the entity. 

##### Level's map view

Once you entered the basic information of the level you can save it and then, when clicking on it in the main menu of the editor, you will be brought to a map view, with several links on the right to add: ``Buildings``, ``Spaces``, ``Doors`` and to edit the ``Graph`` for routing.
In a separate sections you have the possibility to add ``Levels on top`` of this one: this is a key concept to connect each level to the one immediately on top (and indirectly below) of it: ``Stairs`` connecting two levels will usually be added to the ``Level on top``. We will describe this in a separate section of the guide.


##### Buildings

Buildings are a graphical feature of the map, meant to help the visual orientation of the user. You can however choose that a space should only be drawn ``outside of building`` and this allows for a slightly less precise drawing of the space itself, as the system will automatically cut the parts of the space that overlap a building. All spaces that are placed within a building will have walls drawn around them, whereas outside spaces will not.

##### Doors

Doors are a connection between spaces: they are drawn as a mere graphical feature but they have an impact on the routing engine, especially in what regards the altitude of each space: be aware that if you draw a door between two spaces that are configured to be at different ground altitude you will experience glitches on the map like disappearing stairways or ramps and possibly also errors when the map updates are processed. Always remember to double-check the altitudes of spaces that are connected through doors.

### Creating you first space

The interface for entering a space does display the map on the left of the screen: the mandatory information to enter a Space (as with any other geometry in c3nav) is the polygon on the map: you can click anywhere on the map to put the first vertex of the polygon and then click on each of the following vertexes, when you have drawn the whole area of the space click again on the first vertex (or the last one) to conclude the drawing, at this point the ``Save`` button will be available in the right part of the screen. If you hold the _Ctrl_ key while moving the mouse the edges will stick to 15 degrees.
The polygon is the only mandatory information for saving a space, but you should consider adding additional information, for the common fields you should refer to [the relevant section](#Common-Fields-and-information-box) of this document. The ``Location Groups`` that you defined as applicable to spaces will be available and allow you to classify this space.

#### Features of a space

Once selecting a space in the level, you will see all the features that you can add to a single space (just like the space is one feature of a level). You can add ``Points of Interest`` and ``Areas``: these are entities of the map for which you can define the usual attributes and apply the ``Location Groups`` that you defined as applicable to.
``Columns``, ``Obstacles`` and ``Line Obstacles`` are graphical features which represent areas of the space that are blocking movement: the ``Columns`` are per default from floor to ceiling whereas ``Obstacles`` and ``Line Obstacles`` allow to specify a height and an ``altitude above ground``: the difference between the two is that the latter is drawn as a line where you can specify the ``width`` and the former is a polygon you can draw freely.
Obstacles are also needed if you have some zones of the space which are at different heights (like a podium or similar), in this case you should use the obstacles, ``Altitude Markers`` and ``Stairs`` or ``Ramps`` as appropriate.
``Holes`` are a graphical feature and allows the user to see what's below the current level in that specific area of a space, they are useful both if you have actual empty spaces between levels and to give visibility to the stairway that ends in the current level when coming from the one below.
As a general rule, everything you draw in a space will get cropped to that space (this is crucial in the case of ``Stair`` described below).
As in the level, the ``Graph`` allows to define the routing within the space.

### How to map a stairway

A stairway can connect two levels or two places within a space. From the point of view of the mapping there is no difference hence the two cases will be described together.
Each ``Stair`` you draw from the ``Stairs`` menu represent one step of the stair. As it is intended to depict the clear separation between two zones of the space, its vertexes must be either outside of the space or within obstacles. You should always be picturing that you are separating the space in two distinct zones, and if you don't then the system will not be able to understand what to do with the step.
After drawing all the stairs, be sure to add at least two ``altitude marker``: one at the bottom and one at the top of the stairs (i.e. the zone of the space which is delimited below the lowest step and the one delimited above the highest one). 

### How to define geometries "between" two levels

In c3nav you place geometries that are drawn on top of one level using a ``Level on top``: these can contain the same entities as a normal level. By adding a ``space`` which contains a [stairway](#How-to-map-a-stairway) this space will hide everything that lies below it.
The levels on top do not appear on the map for the end user as their content is blended in the main level, and are displayed separately in the editor: in the bottom right of the map there are two boxes: the one on the right allows you to select the main levels, the one on the left is for the levels on top: note that only the level on top of the current main level is displayed.
If you are working on a specific level, the entities defined by its ``Level on top`` will be shown in the map with a slightly lighter shade of gray in the editor.

### Define the routing graph

In order to provide the routing functionality the allowed paths must be defined on the map, this is done by the means of graph nodes and edges.

##### Way types

C3nav has a default way type that you can use without doing further preparations if all of your venue is equally accessible. If you have a multilevel venue or special means of moving people around (like stairs, elevators or escalators) then you should define additional way types.
Way types will be added to the routing menu of the map available to the user, with options to _allow_ or _avoid_ each way type. According to the chosen option the routing engine will try to find alternative paths.
Most of the options you will define when entering a ``Way type`` is meant for being displayed to the end user: ``Title``, ``Title (Plural)``, ``Description``, ``Description Upwards`` and ``Icon name``.
Some fields influence the available options: if ``Upwards separately`` is selected then the user will be able to choose whether to avoid this particular way type for a specific direction (avoiding a way type completely is always offered to the user). The vertical direction (downwards or upwards) is determined from the ``Altitude Markers``.
The ``edge color`` only influences the editor interface and allows you to clearly identify the different way types, other fields influence the estimation the routing engine is doing about the time needed to reach the destination.

##### Adding graph nodes and edges

By clicking on the ``Graph`` point either on the Level or on the space menu, you can begin entering graph nodes and edges.
You can only enter a new node if you are into a space: you may enter each space by double-clicking it, further clicks you do within the space will define a new graph node. You may leave the space and add nodes in other spaces by clicking the link ``to level graph`` in the upper part of the interface.
All the nodes defined in each space are visibile in the level graph, and by single-clicking each node you will see it gets selected and shown in the right part of the interface: once a node is selected you can connect it with any other node but don't forget to choose the correct ``Way Type`` if needed before doing so, to de-select the currently selected node just click it again.
You should be aware that despite all the nodes being visible, only the edges that connect nodes of different spaces are visibile in the level graph. In order to see the paths within a space you have to enter into it.
If your venue has some one-way paths (e.g. some doors that only allow to exit a space) you can select ``create one way edges`` before connecting the nodes: this will also be visible in the editor by the means of a segment connecting the two dots instead of a full line.
Two nodes may only be connected with a specific way type: if you create a new connection between two previously connected nodes this will replace the existing connection. If you overwrite the connection between two nodes with the exact same way type as the existing one, the connection will be deleted.
If you delete an existing nodes all its connections will be deleted as well.

### Backup/Restore (a.k.a. Importing and Exporting your maps)

For backup and restore of the maps you may refer to [export and import scripts](https://github.com/c3nav/c3nav/tree/ea8fe93/deployment/docker) in the official repository and adapt them to your infrastructure. You should be aware that some artifacts (i.e. the logo and the maps sources which are shown in the editor) are not stored in the database but on the file system, and you should back up those as well.
The backup/restore procedure is currently the only officially supported method of transferring data between instances. It should be highlighted that despite c3nav being a django application, the native "dumpdata"/"loaddata" django commands being available, they are not supported and are not expected to work. This has several implications if you are planning on deploying a development/staging environment to perform the mapping on, and a publicly available environment to serve your maps on:
- you must use the same database engine on both environments, in order to make the actual data exchange possible
- you should use the same c3nav version (as in commit sha id) or in any case ensure that there are no difference in the database schema between the two environments to avoid unpredictable results (it is still possible to upload older versions to a newer instance by running the database migrations on the latter after importing the data)

## C3nav Editor Quick Reference

This section is particularly useful if you don't need to do a full mapping of an event, but you need to make small changes or corrections to the map. If you are the person who has done the whole mapping and need to distribute something to your collaborators, this is the part you want to distribute!

### General Principles

#### Login
To log in, go to the main address of your instance and click ``Login'' in the top right hand corner. If you are already logged in, your username will be displayed.

#### Finding/Accessing the Editor
The editor may not be accessible until you have logged into the c3nav instance, so make sure you log in first.
The editor should be linked in the bottom right hand corner, you should see the word ``editor`` in a very fine line, you can always access it by adding ``/editor/`` as a path (the URL in your browser should look like ``https://your_instance_of_c3nav.url/editor/``).

#### Direct Editing vs. ChangeSets
Your user may have the right to toggle between making direct changes to the map and creating ChangeSets. You can immediately see which mode you are in by looking at the top right of the screen. In front of your username you will see either ``Direct editing active`` or ``No objects changed`` (or ``N objects changed`` if you have already made some). In direct editing mode, the changes you make are immediately live if you are running a production deployment (on a development infrastructure you may need to run the appropriate scripts from the CLI and restart the server, but that is beyond the scope of this guide), whereas changesets need to be proposed and approved before they are available on the map.
If your user rights are limited, you may only be able to work in changeset mode, with another user reviewing and merging your changes after you have committed them. If you are working in this mode, you can undo your changes by clicking on the ``N objects changed`` link in the top right hand corner and pressing ``DELETE``.

#### Making small changes to the map
After logging in, you should see a screen with two main sections: the top section contains a list of levels, and the bottom section contains other settings. If you need to add new levels to the map or access a link in the other settings, please refer to the relevant sections of the full guide.
This section is more relevant if you need to add new elements to existing levels, or make small changes to some of the geometries on the map, or to the text displayed.

The elements that constitute a c3nav map are hierarchical: in a level you will only see ``Buildings``, ``Spaces`` (that might be either in a building or outside of it) and ``Doors`` (to connect interior spaces). ``Points of Interest``, ``Areas``, ``Obstacles``, etc. can only exist within a specific Space and are all the same level of the hierarchy. This means that if you want to add a POI to your map, you have to navigate to the right Level, then click on ``Spaces`` and then either double click the correct space in the map view or choose it from the list on the right. You can of course create a new space if no existing one is correct. It is only after choosing the right space that you will be able to add your POI by choosing ``Points of Interest`` in the right menu.

##### Creating new geometries
When you create a new geometry (be it a space, an area or a POI), you may wonder why, when you have filled in the entire mask on the right-hand side of the screen, you do not see a button labelled ``SAVE``. This is because the map you see on the left is actually an important part of the input: namely the one where you draw the geometry (which will be a single point in the case of POIs, a line for some entities like ``Stairs`` or ``Line Obstacles``, or an area for ``Areas``, ``Spaces``, ``Obstacles``, etc.), as soon as the geometry is drawn the ``SAVE`` button will appear.

When drawing on the map you should be aware of the following:
- you can hold down the Ctrl key on your keyboard to snap the line at 15° intervals,
- if you are drawing a polygon, you can 'close' it by clicking on the first vertex you have placed on the map,
- you will see fully opaque vertices: drag them to move them, single click to delete them,
- you will see semi-opaque vertices in the middle of each edge: click or drag them to add more vertices to the polygon.

To get a deeper understanting of the relations between a space and its contents, see the [relevant section](#Features-of-a-space) of the main documentation.

[^level]: levels of the map. almost everything directly visible on the map belongs directly or indirectly to a level.

[^space]: Spaces: aka. rooms on a level. almost all points and areas of interest belong into and positioned in exactly one space.

[^area]: Areas: subsections of spaces not delimited by walls (e.g. exhibitor booth).

[^POI]: Point Of Interest that should not be represented as an area (e.g. ATM).

[^dynamiclocation]: special feature: users can create dynamic location and update their live location, can be used for constantly moving objects like projects/POIs on wheels.

