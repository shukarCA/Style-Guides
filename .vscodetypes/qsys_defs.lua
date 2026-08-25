---@diagnostic disable: missing-return
---@-- .vscodetypes/qsys_defs.lua

----------------------------------------------------------------
-- 1. FOUNDATIONAL USER INTERFACE & COMPONENT GLOBALS
----------------------------------------------------------------

---@class QSysControl
---@field [integer] QSysControl Allows a control to act as an array container for indexed sub-controls.
---@field Choices string[] The array of dropdown menu or selection string items available to the control.
---@field String string The literal text or string value of the control.
---@field Value any The numeric float value or position state (set to 'any' to accept flexible dynamic bracket assignments).
---@field Boolean boolean The true/false logic flag of the control.
---@field IsInLegend boolean True if the element exists in a component legend.
---@field Legend string The visual text label layer on the control.
---@field Color string The hex code or named color definition of the button.
---@field Position number The geometric slider or fader position index (0.0 to 1.0).
---@field IsDisabled boolean True if the user control UI component is currently greyed out or inactive.
---@field IsInvisible boolean True if the control element is dynamically hidden from the active UCI layout canvas.
---@field EventHandler fun(...) | nil Custom execution routine assigned to trigger on status/value changes.
---@field Values number[] Multi-value array used by specific controls (e.g., dual-channel meters yielding peak/avg).
---@field RampTime number The duration in seconds for a control to smoothly transition between numeric values.
---@field IsIndeterminate boolean True if the control state is uncertain (e.g., when a monitored peripheral drops offline).
---@field Name string The programmatic identifier name of the control.
---@field Type string The functional type classification of the control (e.g., "Fader", "Button", "Meter").
---@field Direction string Data stream status direction relative to the script: "Input", "Output", or "Internal".
---@field MinValue number The absolute minimum mathematical numerical limit allowed for the control's Value.
---@field MaxValue number The absolute maximum mathematical numerical limit allowed for the control's Value.
---@field MinString string The text representation corresponding to the control's absolute MinValue.
---@field MaxString string The text representation corresponding to the control's absolute MaxValue.

local QSysControl = {}
function QSysControl:Trigger(...) end

---@class QSysControlsTable
---@field [string] QSysControl Catch-all automatically accepts dynamic naming layers and arrays flawlessly.

-- Register core execution environment variables globally
---@type QSysControlsTable
Controls = {}

----------------------------------------------------------------
-- 2. TCPSOCKET NETWORK LIBRARY
----------------------------------------------------------------

---@class QSysTcpSocket
---@field Connected (fun(data: string))? Callback triggered when a TCP session completes handshake.
---@field Data (fun(data: string))? Callback triggered when new bytes stream into the buffer.
---@field Closed (fun(data: string))? Callback triggered when remote host or network tears down session.
---@field Error (fun(data: string, data: string))? Callback triggered on connection timeout or network drops.
---@field Reconnect (fun(data: string))? Callback triggered when a TCP sessions reconnects.
---@field Timeout (fun(data: string,  data: string))? Callback triggered when socket times out.
---@field IsConnected boolean Read-only flag returning true if the socket is currently connected.
---@field BufferLength number Read-only integer tracking the size of the unparsed incoming stream buffer in bytes.
---@field ReadTimeout number Time, in seconds, to wait for data to be available on socket before raising an Error.
---@field ReconnectTimeout number Time in seconds to wait before attempting to reconnect. 0 disables automatic reconnect.
---@field WriteTimeout number Time, in seconds, to wait for data write to complete before raising an Error.
local QSysTcpSocket = {}

---Connects to a remote network device.
---@param host string IP address or Domain Name.
---@param port number Target TCP port.
function QSysTcpSocket:Connect(host, port) end

---Gracefully closes the active network connection.
function QSysTcpSocket:Disconnect() end

---Sends raw text strings across the active socket pipeline.
---@param data string Data transmission payload.
function QSysTcpSocket:Write(data) end

---Reads a specified count of bytes directly from the socket buffer.
---@param bytes number Character length to read.
---@return string data
function QSysTcpSocket:Read(bytes) end

---Reads lines from buffer until hitting a specified delimiter (e.g. "\r\n").
---@param delimiter string End-of-line flag string.
---@return string data
function QSysTcpSocket:ReadLine(delimiter) end

-- ---@class EOL Lookups for Q-SYS TcpSocket ReadLine operations
---@class QSysEolEnum
---@field Any string Sequence of carriage return or linefeed variants.
---@field CrLf string Optional carriage return followed by a strict linefeed ("\r\n" or "\n").
---@field CrLfStrict string Standard network linefeed layout ("\r\n").
---@field Lf string Single Unix linefeed character ("\n").
---@field Null string Empty null byte delimiter character layout.
---@field Custom string Forces lookup engine to search for a secondary explicit text token string.

-- Global Factory Object Configuration
---@class QSysTcpSocketFactory
---@field EOL QSysEolEnum Static enum configuration table containing Q-SYS end-of-line delimiters.
TcpSocket = {}

---Creates a new instance of a Q-SYS network socket tracking state wrapper.
---@return QSysTcpSocket
function TcpSocket.New() end

----------------------------------------------------------------
-- 3. TIMER SCHEDULING INTERFACE
----------------------------------------------------------------

---@class QSysTimer
---@field EventHandler (fun())? Execution callback routine triggered at every interval deadline event.
local QSysTimer = {}

---Starts a repeating sequence timer.
---@param interval number Timeout length defined in fractional seconds.
function QSysTimer:Start(interval) end

---Halts execution timelines completely.
function QSysTimer:Stop() end

---Returns true if the timer instance is currently counting down.
---@return boolean
function QSysTimer:IsRunning() end

-- Global Factory Object Configuration
---@class QSysTimerFactory
Timer = {}

---Generates an isolated, multi-use repeating timer framework engine instance.
---@return QSysTimer
function Timer.New() end

---Creates a simple, single-shot delayed execution thread that does not repeat.
---@param callback fun() The function or anonymous code block to execute when the time elapses.
---@param delay number Timeout delay interval specified in seconds (supports fractional decimals).
function Timer.CallAfter(callback, delay) end

---Returns the numeric floating-point count of elapsed runtime seconds since the system epoch.
---@return number seconds
function Timer.Now() end

----------------------------------------------------------------
-- 4. CRYPTO HASHING & ENCODING ENVIRONMENT
----------------------------------------------------------------

---@class QSysCrypto
Crypto = {}

---Converts an open data stream payload into an MD5 cryptographic string.
---@param data string Input target text content.
---@return string hex_hash
function Crypto.MD5(data) end

---Converts an open data stream payload into an SHA-256 cryptographic string.
---@param data string Input target text content.
---@return string hex_hash
function Crypto.SHA256(data) end

---Encodes raw content layouts cleanly into transparent Base64 formats.
---@param data string Raw input content payload.
---@return string base64_encoded
function Crypto.Base64Encode(data) end

---Decodes standard active Base64 configurations back down into raw string formats.
---@param data string Encoded target sequence data.
---@return string decoded_output
function Crypto.Base64Decode(data) end

----------------------------------------------------------------
-- 5. HTTPCLIENT ASYNCHRONOUS UTILITY
----------------------------------------------------------------

---@class QSysHttpResponse
---@field Status number Standard target HTTP result status integers (e.g. 200, 404).
---@field Data string Raw text response body string payload payload.
---@field Headers table Indexed table dictionary matching out downstream server transmission properties.

---@class QSysHttpClient
HttpClient = {}

---Dispatches a background web callback request across standard URL pathways.
---@param requestConfig { url: string, method: string, headers: table?, data: string? } Target execution settings dictionary layout.
---@param callback fun(response: QSysHttpResponse) Downstream response parsing handler logic block execution hook.
function HttpClient.CreateRequest(requestConfig, callback) end

----------------------------------------------------------------
-- 6. SERIALPORTS INTEGRATION
----------------------------------------------------------------

---@class QSysSerialPort
---@field Data (fun(data: string))? Callback triggered when hardware receive lines pull raw bytes into buffers.
local QSysSerialPort = {}
---@param baudRate number Speed definitions (e.g. 9600, 115200).
---@param dataBits number Core bit parsing configurations (7 or 8).
---@param parity string Parity state tracking identifiers ("None", "Odd", "Even").
function QSysSerialPort:Open(baudRate, dataBits, parity) end
function QSysSerialPort:Close() end
---@param data string Output string commands sent to localized Tx lines.
function QSysSerialPort:Write(data) end

---@class QSysSerialPortsList
---@field [string] QSysSerialPort Maps physical or virtual COM layers.
SerialPorts = {}
