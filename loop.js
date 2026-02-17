let n=Number(prompt("Enter a number:"));
temp=n;
let r;sum=0;

for(let i=1;i<=n;i++){
    r=temp%10;
    sum+=r*r*r;
    temp=parseInt(temp/10);
}
if(sum==n){
    console.log("armstrong" + n)

}
else{
    console.log(this is not armstrong`)
}