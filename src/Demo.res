@react.component
let make = () =>
  <div className="h-screen flex justify-center items-center">
    <div className="max-w-sm rounded overflow-hidden shadow-lg p-4">
      <img
        className="w-full"
        src="https://api.lorem.space/image/shoes?w=400&h=225"
        alt="Sunset in the mountains"
      />
      <div className="px-6 py-4">
        <div className="font-bold text-xl mb-2"> {React.string("Tailwind")} </div>
        <p className="text-gray-700 text-base">
          {React.string("A reason react starter with tailwind")}
        </p>
      </div>
    </div>
  </div>
