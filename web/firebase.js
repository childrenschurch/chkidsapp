// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAuth } from "firebase/auth";
import { getFirestore } from "firebase/firestore";
import { getStorage } from "firebase/storage";
import { getAnalytics } from "firebase/analytics";
import { getMessaging } from "firebase/messaging";

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyDItO4zmbvSm6pTa_KqVWDUtVse-ZSgc2A",
  authDomain: "chkidsapp.firebaseapp.com",
  projectId: "chkidsapp",
  storageBucket: "chkidsapp.firebasestorage.app",
  messagingSenderId: "592661765920",
  appId: "1:592661765920:web:cbfb11a5088927ca54c145",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);
const storage = getStorage(app);
const analytics = getAnalytics(app);
const messaging = getMessaging(app);

export { app, auth, db, storage, analytics, messaging };
