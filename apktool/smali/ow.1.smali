.class Low;
.super Ljava/lang/Object;

# interfaces
.implements LoF;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LoH;
    .locals 1

    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    return-object v0
.end method
