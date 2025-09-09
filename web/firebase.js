// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyBp98X2ECrZE4GvfRrAIg0zwnxN2T6bWCs",
  authDomain: "chkidsapp-471509.firebaseapp.com",
  projectId: "chkidsapp-471509",
  storageBucket: "chkidsapp-471509.appspot.com",
  messagingSenderId: "784800493341",
  appId: "1:784800493341:web:171ff26f09569da1ab3bf4",
  measurementId: "G-HJGWV4MNB5",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
