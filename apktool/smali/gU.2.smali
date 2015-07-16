.class LgU;
.super Ljava/lang/Object;

# interfaces
.implements Lgs;


# instance fields
.field final synthetic a:LgT;


# direct methods
.method constructor <init>(LgT;)V
    .locals 0

    iput-object p1, p0, LgU;->a:LgT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, LgU;->a:LgT;

    iget-object v1, p0, LgU;->a:LgT;

    invoke-static {v1}, LgT;->a(LgT;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, LgT;->a(ZZ)V

    return-void
.end method
