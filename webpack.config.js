const elixir    = require( "coldbox-elixir" );
const webpack   = require( "webpack" );

elixir.config.mergeConfig({
    plugins: [
        // globally scoped items which need to be available in all templates
        new webpack.ProvidePlugin({
            $              : "jquery",
            jQuery         : "jquery",
            "window.jQuery": "jquery",
            "window.$"     : "jquery"
        })
    ]
});
/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your ColdBox application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

module.exports = elixir( function( mix ) {
    // Mix App styles
    mix.js( [
        "app.js"
    ], {
        entryDirectory: "resources/assets/js",
        outputDirectory: "includes/js/",
        name: "packages"
    }
);
} );