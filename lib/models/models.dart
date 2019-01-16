class MapObject {

  int id;
  // geographical coordinates of the object
  double latitude;
  double longitude;
  // foreign key connecting the object with the list of types shown on the map,
  // such as drinking fountain, bicycle station, etc.
  int type;
  // a user generated comment on where the object is located, e.g. 'next to the
  // elevator', 'second floor', etc.
  String location;
  // a mark describing the condition of the object, in terms of how clean or
  // usable it is; calculated as the average of marks given by users
  double condition;
  // foreign key showing what user added this object to the map
  int addedBy;
  // date stamp showing how recent the state of the object is
  DateTime lastEdited;
  bool verified;
  // how many confirmations there are that the object is there
  int likes;
}

class Mark {
  int id;
  // foreign key showing what user added this object gave this mark
  int by;
  // what object this mark is given to
  int to;
  int value;
  DateTime when;
}

class Comment {
  int id;
  int by;
  int to;
  DateTime when;
  String content;
}