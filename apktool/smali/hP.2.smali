.class final LhP;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final a:LhP;

.field private static final b:LhQ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LhP;

    invoke-direct {v0}, LhP;-><init>()V

    sput-object v0, LhP;->a:LhP;

    new-instance v0, LhQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LhQ;-><init>(LhO;)V

    sput-object v0, LhP;->b:LhQ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic a()LhP;
    .locals 1

    sget-object v0, LhP;->a:LhP;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, LhP;->b:LhQ;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
