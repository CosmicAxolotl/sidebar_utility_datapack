# Sidebar Utility Datapack
> *A structured and simple way to create eye-catching sidebars for general purposes.*
## Index
1. [Documentation](https://github.com/CosmicAxolotl/sidebar_utility_datapack/new/main?readme=1#declaring-a-sidebar-in-a-world).
   1. [function ca:sidebar/add]().
## Documentation

### Declaring a sidebar in a world
SUD uses the function `function ca:sidebar/add` for declaring sidebars in the world.
#### Syntax
```mcfunction
function ca:sidebar/add {id:"<identifier>",display_name:<name>}
```
Elements:
 * `<identifier>`: string, recommended characters: `A-Z a-z 0-9 . _ -`; sidebar object name to use to point to it.
 * `<name>`: Simple [Raw JSON text](https://minecraft.wiki/w/Raw_JSON_text_format) string; sidebar title name to use to point to it. See *footnote 1* for escaping; see also *Text complexity appendix*.

### Editing text lines of a sidebar
SUD uses the function `function ca:sidebar/set` for declaring sidebars in the world.
#### Syntax
```mcfunction
function ca:sidebar/add {id:"<identifier>",contents:<contents>}
```
Elements:
 * `<identifier>`: string; sidebar object name to modify text lines.
 * `<contents>`: NBT component, follows the next structure:
```
{
  lines: [
    [
      {
        text: <prefix; Simple or Complex Raw JSON text string>,
        complex: <byte>
      },
      {
        text: <suffix; Simple or Complex Raw JSON text string; optional; Ommision default to empty>,
        complex: <byte>
      }
    ],
    <every new list states a new line using the previous structure; lines are made from to bottom, up to 16 lines>
  ]
}
```
Notes:
 * See *footnote 1* for escaping; see also *Text complexity appendix*.

#### - Originally made & currently maintained by CosmicAxolotl.
