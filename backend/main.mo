import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Func "mo:base/Func";
import Random "mo:base/Random";
import Text "mo:base/Text";

import Time "mo:base/Time";
import Nat "mo:base/Nat";

actor {
  // Define a list of funny facts about MR.ICP
  stable var facts : [Text] = [
    "MR.ICP can divide by zero.",
    "MR.ICP once counted to infinity. Twice.",
    "MR.ICP's code has no bugs, only features.",
    "When MR.ICP throws exceptions, they catch themselves.",
    "MR.ICP can initialize an array of infinite size.",
    "MR.ICP's internet connection is always 100% decentralized.",
    "Debugging MR.ICP's code is considered an extreme sport.",
    "MR.ICP's blockchain never forks, it just eats with a spoon.",
    "MR.ICP doesn't need consensus; the network agrees with him.",
    "MR.ICP's recursions always terminate because they decide so."
  ];

  // Function to get a pseudo-random funny fact
  public query func getRandomFact() : async Text {
    let numFacts = Array.size(facts);
    let timeNano : Nat = Nat.abs(Time.now());
    // Compute a pseudo-random index based on current time
    let randomIndex = timeNano % numFacts;
    // Retrieve the fact at the random index
    let fact = facts[randomIndex];
    return fact;
  };
};
