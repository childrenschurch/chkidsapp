// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyBcRefFk_GDQrhSS-GyqroBqJGCx-gLRXs",
  authDomain: "chkids-100b6.firebaseapp.com",
  projectId: "chkids-100b6",
  storageBucket: "chkids-100b6.firebasestorage.app",
  messagingSenderId: "602762563286",
  appId: "1:602762563286:web:716a4616da305e2494c377",
  measurementId: "G-4FX536VT3E",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
