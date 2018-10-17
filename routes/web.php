<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*** Page routes ***/
Route::get('/', 'IndexController@index');
Route::get('/home', 'IndexController@index');

Route::get('/about-us', 'AboutUsController@index');

Route::get('/privacy-policy', 'PrivacyPolicyController@index');

Route::get('/terms-of-use', 'TermsOfUseController@index');

Route::get('/products', 'ProductController@index')->name('products.index');
Route::get('/product/{slug}', 'ProductController@show')->name('product.slug');

Route::get('/third-party-products', 'ThirdPartyController@index');
Route::get('/third-party-products/{categories}', 'ThirdPartyController@show');

Route::get('/tradeshows', 'TradeshowHighlightsController@index');

Route::get('/contact', 'ContactController@create')->name('contact.create');
Route::post('/contact', 'ContactController@send')->name('contact.send');


/*** User and e-commerce routes ***/
Auth::routes();

Route::group(['middleware' => 'auth'], function(){

	Route::get('/add-address', 'UserAddressController@create')->name('user.add-address');
	Route::post('/add-address', 'UserAddressController@store');

	Route::get('/add-to-cart/{id}', 'ProductController@getAddToCart')->name('product.addToCart');

	Route::get('/add-one-to-cart/{id}', 'ProductController@getAddOneToCart')->name('product.addOneToCart');

	Route::get('admin-orders', 'OrdersController@getOrders');

	Route::get('/errors', 'ProductController@getErrors')->name('orders.errors');

	Route::get('/manage-addresses', 'UserAddressController@manageAddresses')->name('user.manage-addresses');

	Route::get('/profile', 'UserController@getProfile')->name('profile');

	Route::get('/reduce/{id}', 'ProductController@getReduceByOne')->name('product.reduceByOne');

	Route::get('/remove/{id}', 'ProductController@getRemoveItem')->name('product.remove');

	Route::get('/shopping-cart', 'ProductController@getCart')->name('shop.shoppingCart');

	Route::get('/success', 'ProductController@getSuccess')->name('orders.success');

	Route::post('/user-update', 'UserController@update')->name('user.update');

	Route::get('/your-order', 'ProductController@getOrder')->name('shop.yourOrder');
	Route::post('/your-order', 'ProductController@postOrder')->name('shop.yourOrder');

});

Route::get('/printable-receipt/{id}', 'ProductController@getReceipt')->name('receipt');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
