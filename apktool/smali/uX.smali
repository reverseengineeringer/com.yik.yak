.class final LuX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LuP;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(LuP;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LuX;->a:LuP;

    iput-object p2, p0, LuX;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LuX;->a:LuP;

    iget-object v0, v0, LuP;->i:LuQ;

    iget-object v1, p0, LuX;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LuQ;->c(Ljava/lang/String;)V

    return-void
.end method
