.class LgX;
.super Ljava/lang/Object;

# interfaces
.implements Lgv;


# instance fields
.field final synthetic a:LgW;


# direct methods
.method constructor <init>(LgW;)V
    .locals 0

    iput-object p1, p0, LgX;->a:LgW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, LgX;->a:LgW;

    iget-object v1, p0, LgX;->a:LgW;

    invoke-static {v1}, LgW;->a(LgW;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, LgW;->a(ZZ)V

    return-void
.end method
