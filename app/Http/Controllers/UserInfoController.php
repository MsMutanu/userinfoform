<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserInfo;

class UserInfoController extends Controller
{
    public function index()
{
    return view('frontend');
}

public function store(Request $request)
{
    // Validate the form data
    $validatedData = $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email',
    ]);
    
    // Create a new user record in the database
    $user = new UserInfo();
    $user->name = $validatedData['name'];
    $user->email = $validatedData['email'];
    $user->save();

    // Display a thank-you message on the same view
    return view('frontend', ['name' => $user->name]);
}
}
