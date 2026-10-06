# DCS World AMX International A-1

![DCS World AMX](Theme/ME/loading-window.jpg)

> Free community project bringing the AMX International A-1 family to DCS World. **Work in progress.**

---

> [!WARNING]
> **AMX license notice — permission required for restricted assets.** Models, textures, liveries and other assets with separate usage conditions require prior written permission from their respective rights holders before modification, redistribution, repackaging or inclusion in forks/derivative works, **unless their own license already permits that use**. Contact the [AMX contributors](#contributors) to coordinate permission requests and preserve all original credits.
>
> **Code covered by [GPLv3](LICENSE) remains usable, modifiable and redistributable under that license.** This notice does not replace third-party licenses or revoke permissions already granted.

## Overview

This repository contains a community-developed AMX module focused on the Brazilian A-1 family.

The aircraft are registered as player-flyable through `make_flyable` and use a Lua-based Standard Flight Model (SFM), without a custom external flight-model DLL.

The current repository is a development workspace, not a finished release package. The modern REV07 cockpit is being integrated and validated initially for the front seat of the `AMXT_M`.

## Features

- Four registered variants:
	- **AMX A-1A** — single-seat
	- **AMX A-1B** — two-seat
	- **AMX A-1AM** — modernized single-seat
	- **AMX A-1BM** — modernized two-seat
- Lua Standard Flight Model with no custom EFM DLL
- Seven external weapon stations
- Custom cannon, weapon, pylon and loadout definitions
- Mission tasks: `CAS`, `SEAD`, `Antiship Strike`, `Ground Attack`, `Pinpoint Strike` and `Runway Attack`
- Configurable countermeasures with 80 chaff and 40 flares by default
- Damage cells and animated landing gear, canopy, airbrakes, lights and control surfaces
- Exterior EDM model, visual LODs, liveries, Encyclopedia entry and custom menu theme
- Experimental REV07 cockpit integration with HUD, CMFDs, EFI/AUX, ICP and an initial EICAS implementation
- Automated Lua, Python and PowerShell validation infrastructure

Flight-model values, sensors, damage thresholds and system behaviour are simulator approximations, not certified real-world specifications.

## Development Status

The REV07 cockpit has passed selected visual, display-power and isolated native checks. The current integration remains experimental and is assembled in dedicated candidates.

The following areas are not yet approved as complete:

- Full taxi, takeoff, flight and landing cycle
- Landing gear, flaps and canopy actuation
- Complete keyboard, mouse and X56 validation
- Native radio, radar, RWR, FLIR and HMD integration
- Integrated weapon release
- VR, multiplayer and complete optical calibration
- Three unresolved cockpit texture references

See [integration progress](Doc/Integration/PROGRESS.md), [native tests](Doc/Integration/NATIVE_TESTS.md) and [operational validation](Doc/Integration/OPERATIONAL_VALIDATION.md).

## Compatibility

| DCS version | Status |
| --- | --- |
| Recent DCS World 2.9.x | Development target |
| Other versions | Not independently validated |

## Installation

> There is currently no complete stable release of the REV07 cockpit.

For a published release build:

1. Place the AMX folder under `Saved Games\DCS\Mods\aircraft\AMX`.
2. Start DCS World.
3. Select `AMX A-1A`, `A-1B`, `A-1AM` or `A-1BM` in the Mission Editor.

A raw development checkout is not equivalent to a validated release package.

## Validation

Run the local infrastructure and Lua fixture checks from the repository root:

```powershell
& .\ci\run_tests.ps1 `
		-Python .\.venv\Scripts\python.exe `
		-Lua 'D:\Program Files\DCS World\bin\luae.exe'
```

These checks do not constitute native flight approval. Native testing uses isolated `DCS.AMX-*` profiles through [Test-AMXNative.ps1](Tools/Test-AMXNative.ps1).

## Contributors

**Core development and DCS integration:** alexandrelip

**Development support:** Denis

**Original 3D model** Denis 

**Textures:** Denis, pako, filipe

**Support, testing and feedback:** suak007, Malamem, PaKo, filipe

**Weapons:** Giovanny

Thanks to everyone who reported issues, tested builds and contributed feedback.

## License

The repository currently includes the [GNU General Public License v3](LICENSE).

- GPL-covered source code may be used, modified and redistributed under GPLv3.
- Models, textures, liveries and other third-party assets remain credited to their respective creators and may have separate conditions.
- Where an asset's own license does not already permit the intended use, modification, redistribution, repackaging and inclusion in forks/derivative works require prior written permission from its rights holders. The [contributor group](#contributors) can help coordinate these requests; it cannot grant rights belonging to others.
- Local integration permissions do not automatically establish public redistribution rights for every asset.
- This notice adds no restrictions to GPLv3-covered code, changes no third-party license and revokes no permissions already granted.

This is an unofficial community project and is not affiliated with Eagle Dynamics, Embraer, Leonardo or the Brazilian Air Force.

---

## Português

Projeto comunitário gratuito e em desenvolvimento do AMX International A-1 para DCS World.

O módulo registra quatro variantes pilotáveis: **A-1A**, **A-1B**, **A-1AM** e **A-1BM**. Utiliza SFM em Lua, sem DLL externa própria, e inclui sete estações, armamentos, contramedidas, modelo de danos, pinturas e recursos visuais.

O cockpit moderno REV07 e o EICAS ainda estão em integração experimental. A versão atual não deve ser apresentada como uma aeronave completamente validada ou pronta para lançamento público.

> [!WARNING]
> **Aviso de licença do AMX — autorização para assets restritos.** Modelos, texturas, pinturas e outros assets com condições próprias exigem permissão prévia e por escrito dos respectivos titulares para alteração, redistribuição, reempacotamento ou inclusão em forks/obras derivadas, **salvo quando a licença do próprio componente já permitir esse uso**. Contate o [grupo de colaboradores do AMX](#contributors) para encaminhar pedidos de autorização e preserve os créditos originais.
>
> **O código coberto pela [GPLv3](LICENSE) continua podendo ser usado, modificado e redistribuído nos termos dessa licença.** Este aviso não substitui licenças de terceiros nem revoga permissões já concedidas.

**Desenvolvimento principal e integração com o DCS:** alexandrelip

**Development support:** Denis

**Original 3D model** Denis 

**Textures:** Denis, pako, filipe

**Suporte, testes e feedback:** suak007, Malamem, PaKo, filipe

**Armamentos:** Giovanny

Agradecemos a todos que reportaram problemas, testaram versões e contribuíram com feedback.