// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getAuth } from "firebase/auth";
import { getFirestore } from "firebase/firestore";
import { getStorage } from "firebase/storage";
import { getMessaging } from "firebase/messaging";

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyBp98X2ECrZE4GvfRrAIg0zwnxN2T6bWCs",
  authDomain: "chkidsapp-471509.firebaseapp.com",
  projectId: "chkidsapp-471509",
  storageBucket: "chkidsapp-471509.firebasestorage.app",
  messagingSenderId: "784800493341",
  appId: "1:784800493341:web:171ff26f09569da1ab3bf4",
  measurementId: "G-HJGWV4MNB5",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
const auth = getAuth(app);
const db = getFirestore(app);
const storage = getStorage(app);
const messaging = getMessaging(app);

export { app, analytics, auth, db, storage, messaging };
