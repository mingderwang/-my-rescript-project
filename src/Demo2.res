@react.component
let make = () =>
  <div className="card card-compact w-96 bg-base-100 shadow-xl">
    <figure> <img src="https://api.lorem.space/image/shoes?w=400&h=225" alt="Shoes" /> </figure>
    <div className="card-body">
      <h2 className="card-title"> {React.string("Shoes!")} </h2>
      <p> {React.string("If a dog chews shoes whose shoes does he choose?")} </p>
      <div className="card-actions justify-end">
        <button className="btn btn-primary"> {React.string("Buy Now")} </button>
      </div>
    </div>
  </div>
