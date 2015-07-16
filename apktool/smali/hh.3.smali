.class Lhh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhe;


# direct methods
.method private constructor <init>(Lhe;)V
    .locals 0

    iput-object p1, p0, Lhh;->a:Lhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhe;Lhf;)V
    .locals 0

    invoke-direct {p0, p1}, Lhh;-><init>(Lhe;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhh;->a:Lhe;

    invoke-static {v0}, Lhe;->d(Lhe;)Lgj;

    move-result-object v0

    invoke-interface {v0}, Lgj;->a()V

    return-void
.end method
