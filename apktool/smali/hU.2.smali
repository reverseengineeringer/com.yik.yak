.class final LhU;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(LhU;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, LhU;->a:I

    iput v0, p0, LhU;->a:I

    iget v0, p1, LhU;->b:I

    iput v0, p0, LhU;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, LhU;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, LhQ;

    invoke-direct {v0, p0}, LhQ;-><init>(LhU;)V

    return-object v0
.end method
